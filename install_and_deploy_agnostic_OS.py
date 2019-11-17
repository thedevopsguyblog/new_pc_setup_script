import sys
import json

class wipeAndLoadmyOS:
    def __init__(self, machinename, getJson, defineOS):
        self.machinename = "nobesMachine"
        self.getJson()
        self.defineOS()

        
    def getJson(self):
        with open('./applist.json', 'r') as jsonData:
            applist = json.load(jsonData)
            self.defineOS()
            return applist

    def setNixHostname(self, machinename):
        '''this func can be used across linux and darwin'''
        #code to set the hostname

    def defineOS(self):
        if sys.platform == 'linux':
            def buildLinux(self, applist):
                print ('in the linux build')
        elif sys.platform == 'darwin':
            def buildMac(self, applist):
                print ('\nin the Mac build')
        elif sys.platform == 'windows':
            def buildWindows(self, applist):
                print ('in the Windows build')

    
wipeAndLoadmyOS()

