#!/usr/bin/env python3
import smtplib
import os
import time
import imghdr
import mimetypes
import sys
from email.message import EmailMessage

USER=os.getenv('USER')
pwd=os.getenv('PWD')

server = smtplib.SMTP_SSL("smtp.gmail.com",465)


sender=os.getenv('EMAIL_USER')
password=os.getenv('EMAIL_PASS')
server.login(sender,password)

receive=input('Enter receiver\'s email: ')
subject=input('Enter Subject: ')

messagePath='/home/'+USER+'/message.txt'
os.system('touch '+messagePath)
command='xdg-open '+ messagePath
check="NOT_OK"
os.system(command)
while(check != "OK"):
    check=input("Enter the message and type 'OK' to continue: ")
f=open(messagePath,"r")
body=f.read()
f.close()


msg=EmailMessage()
msg['Subject']=subject
msg['From']=sender
msg['To']=receive
msg.set_content(body)

_names=[]
for _arg in sys.argv[1:]:
    if _arg[0]=='/':
        _names.append(_arg)
    elif _arg[0]=='~':
        _names.append('/home/'+USER+_arg[1:])
    elif _arg[0:2]=='./':
        _names.append(pwd+_arg[1:])
    else:
        _names.append(pwd+'/'+_arg)

for path in _names:
    if not os.path.exists(path):
        print(f"{path}: File Do Not Exist")
        continue
    ctype, encoding = mimetypes.guess_type(path)
    if ctype is None or encoding is not None:
        ctype = 'application/octet-stream'
    maintype, subtype = ctype.split('/',1)
    basename = os.path.basename(path)
    with open(path,'rb') as fp:
        msg.add_attachment( fp.read(),
                            maintype=maintype,
                            subtype=subtype,
                            filename=basename)

print("Sending...")
server.send_message(msg)
print('Message Sent!!')
server.quit()