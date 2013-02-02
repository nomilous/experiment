class Nez

    @expectArray: []

    @test: (callback) ->

         callback()


Object.prototype.expect = (x) -> 

    #
    # Object.expect()
    #

    for fn of x

        Nez.expectArray.push 
            func: fn
            parm: x[fn]


module.exports = Nez
