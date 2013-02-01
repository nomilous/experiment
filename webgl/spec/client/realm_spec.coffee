sinon  = require 'sinon'
should = require 'should'
Realm  = require '../../app/client/realm'

describe 'Realm', -> 


    before (done) ->

        @spy = sinon.spy()

        #
        # mock all
        #

        @document = 
            getElementById: (id) => 
                @spy id
                return appendChild: ->
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

        realm = new Realm @document, @window, @angular, @three, 'viewport_id'

        @spy.calledWith('viewport_id').should.equal true
        done()

