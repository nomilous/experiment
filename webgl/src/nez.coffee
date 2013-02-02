class Nez

    @expectArray: []

    @test: (callback) =>

        while @expectArray.length > 0

            expectation = @expectArray.shift()

            #
            # remove/restore the original function
            #

            expectation.obj[ expectation.functionName ] = expectation.functionOrig

        callback()


class Expectation

    constructor: (@functionName, @functionArgs, @functionOrig, @obj) -> 

        #
        # attach the expectation spy()
        #

        @obj[@functionName] = ->




Object.prototype.expectCall = (xpect) -> 

    for fName of xpect

        #
        # create expectation
        #

        x = new Expectation fName, xpect[fName], this[fName], this

        Nez.expectArray.push x


module.exports = Nez
