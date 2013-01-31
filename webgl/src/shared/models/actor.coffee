class Actor

    constructor: (@message) ->


    alert: -> 

        alert @message


    @get: (req, res) -> 

        res.send 

            name: 'test actor'






if typeof module == 'undefined'

    #
    # running clientside
    #

    namespace './models/actor': Actor

else

    #
    # running serverside
    #

    module.exports = Actor
