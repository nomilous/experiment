Express = require 'express'
Et      = require 'et'
port    = 3000
server  = Express()

Et.al

    app: server

    session: false
    auth: false

    use: (app) -> 

        app.configure -> 

            app.set 'view engine', 'jade'
            app.set 'views', __dirname + '/views'
            app.use '/client', Express.static __dirname + '/app/client'
            app.use '/public', Express.static __dirname + '/public'

        app.get '/', (req, res) -> res.render 'index'        

    models:

        actors: require './app/server/models/actor'

server.listen port

