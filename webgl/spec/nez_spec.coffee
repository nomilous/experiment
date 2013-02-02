should = require 'should'

Nez    = require '../src/nez'
test   = Nez.test

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


    xit 'enables setting expectations', (done) -> 

        TestExample.expect methodName: with: 'arg', returning: 'result'

        Nez.expectArray[0].func.should.equal 'methodName'
        Nez.expectArray[0].parm.with.should.equal 'arg'

        test done


    it 'creates the function on the object', (done) -> 

        TestExample.expect unimplementedFn: with: 'args'     

        TestExample.unimplementedFn.should.be.an.instanceof Function

        test ->

        #
        # and removes it at callback
        # 

        should.not.exist TestExample.unimplementedFn

        done()
