namepaces = {};

function namespace(objs) {

    for( name in objs ) {

        namepaces[name] = objs[name];

    }

}

function require(name) {

    return namepaces[name];

}