et      = require 'et'
views   = require 'connect-jade'

et.al

    session: false
    auth: false

    root: __dirname

    static:

        shared:

            path: __dirname + '/app/shared'

    before: (server) -> 

        server.use views root: 'views'

        server.get '/start', (req, res, next) -> 

            #
            # http://localhost:3000
            #

            res.render 'index'
            

    models:

        actors: require './app/shared/models/actor'
