// Generated by CoffeeScript 1.4.0
var Actor;

module.exports = Actor = (function() {

  function Actor() {}

  Actor.get = function(req, res) {
    return res.send({
      name: 'test actor'
    });
  };

  return Actor;

})();