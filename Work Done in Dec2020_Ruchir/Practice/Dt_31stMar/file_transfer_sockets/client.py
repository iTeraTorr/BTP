#!/usr/bin/env python3
#Source: https://www.thepythoncode.com/article/send-receive-files-using-sockets-python
import socket
import os

SEPARATOR=":"
BUFFER_SIZE = 4096 #sends 4096 bytes each time step
host = "143.198.118.189"
port = 9999
filename = "send.txt"
filesize = os.path.getsize(filename)
print(filename,filesize)

s=socket.socket()
print(f"[+] Connecting to {host}:{port}")
s.connect((host,port))
print("[+] Connected.")


s.send(f"{filename}{SEPARATOR}".encode())


with open(filename,"rb") as f:
    while True:
        bytes_read = f.read(BUFFER_SIZE)
        if not bytes_read:
            break
        s.sendall(bytes_read)

s.close()

