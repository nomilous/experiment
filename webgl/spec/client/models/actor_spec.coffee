should = require 'should' 
Actor  = require '../../../app/client/models/actor'


describe 'Actor', -> 


    it 'has position with default at origin', (done) -> 

        (new Actor).position.should.eql [0,0,0]
        done()


    it 'can be initialized with position', (done) -> 

        (new Actor position: [7,8,9]).position.should.eql [7,8,9]
        done()

