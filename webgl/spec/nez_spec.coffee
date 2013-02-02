require 'should'

test = require '../src/nez'


describe 'Nez', -> 


    it 'is French for nose', (knows) -> 

        knows()


    it 'creates Object.expect()', (done) -> 

        Object.expect.should.be.an.instanceof Function
        done()


    it 'returns a function when required', (done) ->

        test.should.be.an.instanceof Function
        done() 


    it 'calls back', (done) -> 

        test done
