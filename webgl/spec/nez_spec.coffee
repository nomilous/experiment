should = require 'should'

Nez    = require '../src/nez'
test   = Nez.test

describe 'Nez', -> 


    it 'is French for nose', (knows) -> 

        knows()

    it 'is actually', (that) ->

        ('nez'[2] + 'nez'[1] + 'nez'[0]) == 'zen'
        that()


    it 'creates Object.expect()', (done) -> 

        Object.expectCall.should.be.an.instanceof Function
        done()


    it 'returns a function when required', (done) ->

        test.should.be.an.instanceof Function
        done() 


    it 'calls back', (done) -> 

        test done


    it 'enables setting expectations', (done) -> 

        class TextExample1

        TextExample1.expectCall methodName: with: 'arg'

        Nez.expectArray[0].functionName.should.equal 'methodName'
        Nez.expectArray[0].functionArgs.with.should.equal 'arg'

        test done


    it 'creates the function on the object', (done) -> 

        class TextExample2

        TextExample2.expectCall unImplementedFn: with: 'args'

        TextExample2.unImplementedFn.should.be.an.instanceof Function

        test done


    xit 'removes the function after test()', (done) ->

      