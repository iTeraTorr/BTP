import socket

s = socket.socket()
print('Socket Created')

s.bind(('localhost',9999))
s.listen(3) #number of clients to handle
print('waiting for connections')

while True:
    c, addr = s.accept() #c is client socket, and addr is client address
    name = c.recv(1024).decode()
    print("Connected with", addr,name)
    msg=f"Welcome to the disco, {name}"
    c.send(bytes(msg,'utf-8'))
    print('q')
    c.close()