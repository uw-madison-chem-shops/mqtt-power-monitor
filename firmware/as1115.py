# https://github.com/ControlEverythingCommunity/AS1115/blob/master/Python/AS1115.py


class AS1115(object):

    def __init__(self, i2c, address=0x2A):
        self.i2c = i2c
        self.address = 0x2A

        self.i2c.writeto_mem(0x00, 0x0C, b"\x01")
        self.i2c.writeto_mem(0x00, 0x0A, b"\x80")
        self.i2c.writeto_mem(0x00, 0x0E, b"\x04")
        self.i2c.writeto_mem(0x00, 0x0B, b"\x02")
        self.i2c.writeto_mem(0x00, 0x09, b"\x07")


    def write(self, number):
        number = round(number, 1)
        em1 = int(
                  (int((number + 1e-6)*10) % 10)
                  // 1).to_bytes(1, "big")
        e1 =  int((int((number % 10) // 1)) | 128).to_bytes(1, "big")
        e2 = int(number // 10).to_bytes(1, "big")
        print(number, em1, e1, e2)
        self.i2c.writeto_mem(0x00, 0x03, em1)
        self.i2c.writeto_mem(0x00, 0x02, e1)
        self.i2c.writeto_mem(0x00, 0x01, e2)
