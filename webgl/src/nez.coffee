class Nez

    @expectArray: []

    @test: (callback) ->

         callback()



class Expectation

    constructor: (@functionName, @functionArgs, @functionOrig, @obj) -> 

        @obj[@functionName] = ->



Object.prototype.expectCall = (xpect) -> 

    for fName of xpect

        #
        # create expectation
        #

        x = new Expectation fName, xpect[fName], this[fName], this


        

        Nez.expectArray.push x


module.exports = Nez
