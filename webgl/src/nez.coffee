class Nez

    @expectArray: []

    @calledArray: []

    @test: (callback) =>

        while @expectArray.length > 0

            expectation = @expectArray.shift()

            #
            # remove/restore the original function
            #

            expectation.obj[ expectation.functionName ] = expectation.functionOrig

        callback()


class Realization

    constructor: (@functionName) -> 

        

class Expectation

    constructor: (@functionName, @functionArgs, @functionOrig, @obj) -> 

        #
        # attach the expectation spy()
        #

        @obj[@functionName] = =>

            #
            # push details of each call to 
            # the spy() into Nez.calledArray
            # 

            call = new Realization @functionName

            Nez.calledArray.push call




Object.prototype.expectCall = (xpect) -> 

    for fName of xpect

        #
        # create expectation
        #

        x = new Expectation fName, xpect[fName], this[fName], this

        Nez.expectArray.push x


module.exports = Nez
