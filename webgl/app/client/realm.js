// Generated by CoffeeScript 1.4.0
var Realm;

Realm = (function() {

  function Realm(dom, divID) {
    this.dom = dom;
    this.root = this.dom.getElementById(divID);
    console.log('init Realm in div:', this.root);
  }

  return Realm;

})();

if (typeof window === 'undefined') {
  module.exports = Realm;
} else {
  define(function() {
    return Realm;
  });
}
