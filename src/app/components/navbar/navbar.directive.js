(function() {
  'use strict';

  angular
    .module('nabu')
    .directive('acmeNavbar', acmeNavbar);

  /** @ngInject */
  function acmeNavbar() {
    var directive = {
      restrict: 'E',
      templateUrl: 'app/components/navbar/navbar.html',
      scope: {
          creationDate: '='
      },
      controller: NavbarController,
      controllerAs: 'vm',
      bindToController: true
    };

    return directive;

    /** @ngInject */
    function NavbarController($route, moment, nabuData) {
      var vm = this;
      vm.$route = $route;
      vm.saveStatus = "";
      vm.save = function(){
        nabuData.deploy(function(status){
          vm.saveStatus = status;
        })
      };

      // "vm.creation" is avaible by directive option "bindToController: true"
      vm.relativeDate = moment(vm.creationDate).fromNow();
    }
  }

})();
