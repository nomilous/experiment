net = require 'net'

class Server

    constructor: ->

        server = net.createServer (socket) => 
            console.log 'connect:', socket.address()
            client = new Client(socket)

        server.listen 17171, => 
            console.log 'listening: ', server.address()

class Client

    constructor: (socket, seq = 0) -> 

        socket.on 'error', (err) -> 
            console.log err
            
        socket.on 'data', (payload) -> 
            console.log 'received:', payload.toString()

        socket.write 'hello ' + seq += 1

new Server()

