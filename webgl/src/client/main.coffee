requirejs.config

    baseUrl: 'client'

    paths:
        angular: '/vendor/js/angular-1.0.4'
        three:   '/vendor/js/three-r53'



requirejs ['realm', 'angular', 'three' ], (Realm) -> 

    realm = new Realm document, window, angular, THREE, 'viewport'
    realm.animate()

