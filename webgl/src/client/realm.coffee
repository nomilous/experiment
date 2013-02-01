class Realm

    constructor: (@dom, divID) ->

        @root = @dom.getElementById divID

        console.log 'init Realm in div:', @root






if typeof window == 'undefined'

    #
    # serverside (node defines no window)
    #

    module.exports = Realm

else

    #
    # clientside
    #

    define -> Realm

