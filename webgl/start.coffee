et      = require 'et'
views   = require 'connect-jade'

et.al

    session: false
    auth: false

    root: __dirname

    static:

        models:

            path: __dirname + '/app/models'

    before: (server) -> 

        server.use views root: 'views'

        server.get '/start', (req, res, next) -> 

            #
            # http://localhost:3000
            #

            res.render 'index'
            

    models:

        actors: require './app/models/actor'
