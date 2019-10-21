import socket

sock = socket.socket(socket.AF_INET,socket.SOCK_STREAM)

host = "192.168.0.102"

port = 131

def portscanner(port):
    if sock.connect_ex((host,port)):
        print("port {} is closed".format(port))
    else:
        print("port {} is opened".format(port))
portscanner(port)
