class Scene

    constructor: (scene = {}) ->

        @actors = scene.actors || {} 







#
# TODO: see about possible ways to get rid of this.
#

if typeof window == 'undefined'

    module.exports = Scene

else 

    define -> Scene
