sinon  = require 'sinon'
should = require 'should'
Realm  = require '../../app/client/realm'

describe 'Realm', -> 


    before (done) ->

        #
        # mock DOM
        #

        @spy = sinon.spy()

        @DOM = getElementById: (id) => @spy id
                

        done()


    it 'is constructed with the DOM root and viewport div element id', (done) -> 

        realm = new Realm @DOM, 'viewport_id'

        @spy.calledWith('viewport_id').should.equal true
        done()

