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
        self.master.update_idletasks()
        self.master.after(50, self.idle)
        #self.master.after_idle(self.idle)


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