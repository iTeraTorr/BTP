#!/usr/bin/env python3
import socket

UDP_IP = "104.131.78.13"
UDP_PORT = 9000

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
print("Type quit to exit")
while True:
	MESSAGE = input("> ")
	if MESSAGE=="quit":
		break
	if len(MESSAGE)>0:
		sock.sendto(MESSAGE.encode(), (UDP_IP, UDP_PORT))
