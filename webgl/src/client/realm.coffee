class Realm

    constructor: (@dom, @window, @angular, @three, divID) ->

        @root = @dom.getElementById divID

        width  = 300
        height = 200

        @camera = new @three.PerspectiveCamera 75, width / height, 1, 10000
        @camera.position.z = 1000


        @scene = new this.Scene()


        geometry = new @three.CubeGeometry 200, 200, 200
        material = new @three.MeshBasicMaterial 
            color: 0xff0000
            wireframe: true 


        @mesh = new @three.Mesh geometry, material
        @scene.add @mesh
        

        @renderer = new @three.CanvasRenderer()
        @renderer.setSize width, height


        @root.appendChild @renderer.domElement

    animate: => 

        requestAnimationFrame @animate

        @mesh.rotation.x += 0.01
        @mesh.rotation.y += 0.02
        @renderer.render @scene.scene, @camera




if typeof window == 'undefined'

    #
    # serverside (node defines no window)
    # 

    Realm.prototype.Scene = require './models/scene'
    Realm.prototype.Actor = require './models/actor'
    module.exports = Realm

else

    #
    # clientside
    #

    define ['models/scene', 'models/actor'], (Scene, Actor) -> 

        Realm.prototype.Scene = Scene
        Realm.prototype.Actor = Actor
        return Realm

