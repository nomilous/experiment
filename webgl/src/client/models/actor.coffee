class Actor

    constructor: (actor = {}) -> 

        @position = actor.position || [0,0,0]





if typeof window == 'undefined'

    module.exports = Actor

else 

    define -> Actor
