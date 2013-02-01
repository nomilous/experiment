should = require 'should' 
Scene  = require '../../../app/client/models/scene'
Actor  = require '../../../app/client/models/actor'

describe 'Scene', -> 


    it 'has a list of actors', (done) -> 

        (new Scene).actors.should.eql {}
        done()


    it 'can be initialized with a hash of actors', (done) -> 

        actor = new Actor()
        (new Scene actors: id: actor).actors.id.should.equal actor
        done()

