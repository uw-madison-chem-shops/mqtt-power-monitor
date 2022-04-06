# https://github.com/ControlEverythingCommunity/PECMAC/blob/master/Python/PECMAC125A.py


import time


class PECMAC125A(object):

    def __init__(self, i2c, address=0x2A):
        self.i2c = i2c
        self.address = 0x2A

    def measure_current(self):
        """Returns current in amps."""
        self.i2c.writeto_mem(self.address, 0x92, b"\x6A\x01\x01\x01\x00\x00\xFF")
        time.sleep(0.1)
        out = self.i2c.readfrom_mem(0x2A, 0x55, 3)
        msb1 = out[0]
	msb = out[1]
	lsb = out[2]
        current = (msb1 * 65536 + msb * 256 + lsb) / 1000.0
        return current
