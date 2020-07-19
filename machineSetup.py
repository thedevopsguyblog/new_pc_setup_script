import os
import sys

class initSetup():
    def __init__(self, machineName, email):
        self.machineName = machineName
        self.email = email

    machineName = input("What's your name?\n").lower()
    email = input("Enter email address\n").lower()
    
    if sys.platform == "darwin":
        print ('executing Mac setup!')
        if os.system("xcode-select -p") == 0:
            print("xcode is installed moving on")
        else:
            print("installing xcode")
            
    elif sys.platform == "nt":
        print ('executing windows setup!')
    
    elif sys.platform == "linux":
        print ('executing linux setup...\n NOTE: This was tested on a Manjaro Docker Image!')
    else:
        print("Unsupported OS!")


