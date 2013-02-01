class Scene

    constructor: (scene = {}) ->

        @actors = scene.actors || {} 

        @scene = new @THREE.Scene()

    add: (actor) -> 

        #
        # pass straight through into THREE.scene
        # PENDING: Actor 
        #

        @scene.add actor



#
# TODO: see about possible ways to get rid of this.
#

if typeof window == 'undefined'

    Scene.prototype.THREE = require '../../server/three-stub'
    module.exports = Scene

else 


    #
    # define ['three'], (THREE) ->  # perhaps later
    # 
    
    define ['three'], -> 

        #
        # nest a ref to THREE into the scene
        #
        
        Scene.prototype.THREE = THREE
        return Scene

