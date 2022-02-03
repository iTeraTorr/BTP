#!/usr/bin/env python3
import socket
import os
# SERVER_HOST = socket.gethostname()
SERVER_HOST = ""
SERVER_PORT = 9999
BUFFER_SIZE = 4096
SEPARATOR = ":"

s=socket.socket()

s.bind((SERVER_HOST,SERVER_PORT))
s.listen(5)
print(f"[*] Listening at {SERVER_HOST}:{SERVER_PORT}")

client_socket, address = s.accept()
print(f"[+] {address} is connected.")

received = client_socket.recv(BUFFER_SIZE).decode()
filename, content = received.split(SEPARATOR)
print(received)
filename=os.path.basename(filename)

# with open(filename, "wb") as f:
#     while True:
#         bytes_read = client_socket.recv(BUFFER_SIZE)
#         if not bytes_read:
#             break
#         f.write(bytes_read)
f=open(filename,"w")
f.write(content)
with open(filename, "wb") as f:
    while True:
        bytes_read = client_socket.recv(BUFFER_SIZE)
        if not bytes_read:
            break
        f.write(bytes_read)

# while True:
#     bytes_read = client_socket.recv(BUFFER_SIZE)
#     if not bytes_read:
#         break
#     f.write(bytes_read)

client_socket.close()
s.close()
