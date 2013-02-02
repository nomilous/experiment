should = require 'should'

Nez    = require '../src/nez'
test   = Nez.test

describe 'Nez', -> 


    xit 'is French for nose', (knows) -> 

        knows()

    xit 'is actually', (that) ->

        ('nez'[2] + 'nez'[1] + 'nez'[0]).should.equal 'zen'
        that()


    xit 'creates Object.expect()', (done) -> 

        Object.expectCall.should.be.an.instanceof Function
        done()


    xit 'returns a function when required', (done) ->

        test.should.be.an.instanceof Function
        done() 


    xit 'calls back', (done) -> 

        test done


    xit 'enables setting expectations', (done) -> 

        class TextExample1

        TextExample1.expectCall methodName: with: 'arg'

        Nez.expectArray[0].functionName.should.equal 'methodName'
        Nez.expectArray[0].functionArgs.with.should.equal 'arg'

        test done


    xit 'creates the function on the object', (done) -> 

        class TextExample2

        TextExample2.expectCall unImplementedFn: with: 'args'

        TextExample2.unImplementedFn.should.be.an.instanceof Function

        test done


    it 'removes the function after test()', (done) ->

      class TestExample3

      TestExample3.expectCall fn: with: 'args'
      
      test -> 

      should.not.exist TestExample3.fn

      done()

