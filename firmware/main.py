import settings

import sys
import machine
from machine import Pin, I2C, WDT
import network
import time
import struct

import mqtt_as
mqtt_as.MQTT_base.DEBUG = True

from homie.constants import FALSE, TRUE, BOOLEAN, FLOAT, STRING
from homie.device import HomieDevice
from homie.node import HomieNode
from homie.property import HomieNodeProperty

from uasyncio import get_event_loop, sleep_ms

from as1115 import AS1115
from pecmac125a import PECMAC125A


class CurrentSensor(HomieNode):

    def __init__(self, name="bme280", device=None):
        super().__init__(id="pecmac125a", name=name, type="sensor")
        self.device = device
        self.i2c = I2C(scl=Pin(14), sda=Pin(12))
        self.pecmac125a = PECMAC125A(i2c=self.i2c)
        self.as1115 = AS1115(i2c=self.i2c)
        self.current = HomieNodeProperty(
            id="current",
            name="current",
            unit="A",
            settable=False,
            datatype=FLOAT,
            default=0,
        )
        self.add_property(self.current)
        self.uptime = HomieNodeProperty(
            id="uptime",
            name="uptime",
            settable=False,
            datatype=STRING,
            default="PT0S"
        )
        self.add_property(self.uptime)
        self.ip = HomieNodeProperty(
            id="ip",
            name="ip",
            settable=False,
            datatype=STRING,
            default="",
        )
        self.add_property(self.ip)
        self.led = Pin(0, Pin.OUT)
        self.online_led = Pin(12, Pin.OUT)
        self.online_led.off()
        self.last_online = time.time()
        self.start = time.time()
        print("start time", self.start)
        loop = get_event_loop()
        loop.create_task(self.update_data())

    async def update_data(self):
        # wait until connected
        for _ in range(60):
            print("wait until connected")
            await sleep_ms(1_000)
            if self.device.mqtt.isconnected():
                break
        # loop forever
        while True:
            while self.device.mqtt.isconnected():
                print("update data")
                print(network.WLAN().status())
                self.last_online = time.time()
                print(1)
                self.online_led.on()
                print(2)
                self.led.value(0)  # illuminate onboard LED
                current = self.pecmac125a.measure_current()
                self.as1115.write(current)
                self.current.data = str(current)
                self.uptime.data = self.get_uptime()
                self.ip.data = network.WLAN().ifconfig()[0]
                self.led.value(1)  # onboard LED off
                print("final")
                await sleep_ms(1_000)
            while not self.device.mqtt.isconnected():
                print("wait for reconnect")
                if time.time() - self.last_online > 300:   # 5 minutes
                    machine.reset()
                self.online_led.off()
                self.led.value(0)  # illuminate onboard LED
                await sleep_ms(100)
                self.led.value(1)  # onboard LED off
                await sleep_ms(1000)
            machine.reset()  # if lost connection, restart

    def get_uptime(self):
        diff = int(time.time() - self.start)
        out = "PT"
        # hours
        if diff // 3600:
            out += str(diff // 3600) + "H"
            diff %= 3600
        # minutes
        if diff // 60:
            out += str(diff // 60) + "M"
            diff %= 60
        # seconds
        out += str(diff) + "S"
        return out


def main():
    # homie
    print("homie main")
    homie = HomieDevice(settings)
    homie.add_node(CurrentSensor(device=homie))
    homie.run_forever()


if __name__ == "__main__":
    main()
