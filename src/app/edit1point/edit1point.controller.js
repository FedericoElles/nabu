(function () {
  'use strict';

  angular
    .module('nabu')
    .controller('Edit1PointController', Edit1PointController);

  /** @ngInject */
  function Edit1PointController($timeout, $routeParams, webDevTec, toastr, nabuData) {
    var vm = this;

    vm.nabu = nabuData;
    //vm.record = nabuData.nabu.data.route[id];
    vm.params = $routeParams;
    
    vm.back = function(){
      history.back();
    }

  vm.filterFunction = function(element) {
    return ''+element.point_id === ''+$routeParams.id;
  };

  }
})();
