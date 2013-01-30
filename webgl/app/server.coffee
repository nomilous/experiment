et     = require 'et'
assets = require 'connect-assets'
views  = require 'connect-jade'

module.exports = (root) ->

    et.al

        root: root

        use: (server) -> 

            server.use assets()
            server.use views root: root + '/views'

            server.get '/', (req, res) -> 

                #
                # http://localhost:3000
                #

                et.log.info "huh? why no reply..."

                console.log '\n\n\ngrumbles...\n\n\n'

                res.render 'index'

        models:

            actors: require './models/actor'

