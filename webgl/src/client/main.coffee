requirejs.config

    baseUrl: 'client'

    paths:
        angular: '/vendor/js/angular-1.0.4'
        three:   '/vendor/js/three-r53'



requirejs ['realm', 'angular', 'three' ], (Realm) -> 

    #
    # angular and three mix into the global scope
    #

    new Realm( 'viewport' )

