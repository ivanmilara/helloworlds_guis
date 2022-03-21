"""The MIT License (MIT)
Copyright © 2021 Iván Sánchez Milara

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
"""

from tkinter import Tk, Label, Button, StringVar, Frame
import serial, sys, time

class SensorValues (Frame):
    LABEL_TEXT = "Last value received: {}"
    def __init__(self, master, serial):
        super().__init__(master)
        self.serial = serial
        master.title("Hello sensor")
        master.minsize(640,360)
        self.pack()

        self.label_index = 0
        self.label_text = StringVar()
        self.label_text.set(self.LABEL_TEXT.format("0"))
        self.label = Label(master, textvariable=self.label_text, font=("Arial", 25))
        self.label.pack()


        self.close_button = Button(master, text="Close", command=master.quit)
        self.close_button.pack()
    
    def idle (self):
        #
        # idle routine
        #
        byte2 = 0
        byte3 = 0
        byte4 = 0
        ser.flush()
        #
        # find framing 
        #
        while 1:
            byte1 = byte2
            byte2 = byte3
            byte3 = byte4
            byte4 = ord(ser.read())
            if ((byte1 == 1) & (byte2 == 2) & (byte3 == 3) & (byte4 == 4)):
                break
        low = ord(ser.read())
        high = ord(ser.read())
        self.value = (256*high)+low
        print(self.value)
        self.label_text.set(self.LABEL_TEXT.format(str(self.value)))
        self.update() 
        #self.master.after(50, self.idle)
        self.master.after_idle(self.idle)


#
#  check command line arguments
#
if (len(sys.argv) != 2):
    print("command line: hellosensor.py serial_port")
    sys.exit()
port = sys.argv[1]
#
# open serial port
#
ser = serial.Serial(port,9600, writeTimeout=0)
ser.setDTR()

#
# create the interface
#
root = Tk()
my_gui = SensorValues(root, ser)
root.after(200, my_gui.idle)
root.mainloop()