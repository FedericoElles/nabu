(function () {
  'use strict';

  angular
    .module('nabu')
    .controller('Edit1RouteController', Edit1RouteController);

  /** @ngInject */
  function Edit1RouteController($timeout, $routeParams, webDevTec, toastr, nabuData) {
    var vm = this;

    vm.nabu = nabuData;
    //vm.record = nabuData.nabu.data.route[id];
    vm.params = $routeParams;
    
    vm.back = function(){
      history.back();
    }

  }
})();
