class Realm

    constructor: (@dom, @window, @angular, @three, divID) ->

        @root = @dom.getElementById divID

        width  = 300
        height = 200

        console.log width, height


        @camera = new @three.PerspectiveCamera 75, width / height, 1, 10000
        @camera.position.z = 1000
        

        @scene = new @three.Scene()
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
        @renderer.render @scene, @camera




if typeof window == 'undefined'

    #
    # serverside (node defines no window)
    #

    module.exports = Realm

else

    #
    # clientside
    #

    define -> Realm

