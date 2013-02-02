require 'should'

Nez  = require '../src/nez'
test = Nez.test

class TestExample


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


    it 'enables setting expectations', (done) -> 

        TestExample.expect methodName: with: 'arg', returning: 'result'

        Nez.expectArray[0].func.should.equal 'methodName'
        Nez.expectArray[0].parm.with.should.equal 'arg'

        console.log Nez.expectArray[0]

        test done

