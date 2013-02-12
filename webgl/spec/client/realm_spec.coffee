should = require 'should'
Realm  = require '../../app/client/realm'

test = require('nez').test



describe 'Realm', -> 


    before (done) ->

        #
        # mock all
        #

        @document = {}
        @window =
            innerWidth: 1024
            innerHeight: 768
        @angular = {}
        @three = 
            PerspectiveCamera: -> position: x: 0, y: 0, z: 0
            Scene: -> 
                add: ->
            CubeGeometry: -> 
            MeshBasicMaterial: ->
            Mesh: ->
            CanvasRenderer: ->
                setSize: ->
                domElement: {}

        done()


    it 'is constructed with all required elements from the global scope', (done) -> 

        @document.expect

            #
            # Expect document.getElementById to be called
            # 
            # Test fails if not.
            # 

            getElementById: (id) -> 

                #
                # Check that it was called with the right arg
                #
                
                id.should.equal 'viewport_id'

                #
                # And return a stub for the ""found"" element 
                # that defines appendChild()
                #

                return appendChild: ->



        realm = new Realm @document, @window, @angular, @three, 'viewport_id'
        
        test done


    it 'has Actor and Scene definitions subclassed', (done) -> 

        #
        # To avoid the colliding require() signature,
        # 
        # requireJS and node both define it
        #

        Realm.prototype.Scene.should.equal require '../../app/client/models/scene'
        Realm.prototype.Actor.should.equal require '../../app/client/models/actor'

        done()



