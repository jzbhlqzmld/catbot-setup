#!/usr/bin/python3
# state-api.py is used to retrieve bot statuses from Cathook IPC locally

import requests # Might need to install manually. (apt -y install python3-pip) and then just run: (pip3 install requests)
import sys
import json

try:
    h = open("/tmp/cat-webpanel-password","r")
    file = h.read()
    h.close()
    
    s = requests.Session()
    
    s.post("http://[::1]:8081/api/auth", data={"password":file}, headers={"Origin":"http://[::1]:8081", "Referer":"http://[::1]:8081/"})
    h = s.get("http://[::1]:8081/api/state", headers={"Origin":"http://[::1]:8081", "Referer":"http://[::1]:8081/"})
    output = h.text
    json.loads(output)
except Exception as e:
    print(e)
    sys.exit()
print(output)
