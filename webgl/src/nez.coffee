class Nez

    @expectArray: []

    @test: (callback) ->

         callback()


Object.prototype.expect = (x) -> 

    #
    # Object.expect()
    #

    for fn of x

        this[fn] = (args) -> 

        Nez.expectArray.push 
            func: fn
            call: this[fn]
            parm: x[fn]


module.exports = Nez
