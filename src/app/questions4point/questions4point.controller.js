(function () {
  'use strict';

  angular
    .module('nabu')
    .controller('Questions4PointController', Questions4Point);

  /** @ngInject */
  function Questions4Point($timeout, $routeParams, webDevTec, toastr, nabuData) {
    var vm = this;

    vm.nabu = nabuData;
    //vm.record = nabuData.nabu.data.route[id];
    vm.params = $routeParams;
    
    vm.back = function(){
      history.back();
    }

    vm.filterFunction = function(element) {
      return ''+element.point_id === ''+$routeParams.pointId;
    };


  }
})();
