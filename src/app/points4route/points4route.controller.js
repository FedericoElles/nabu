(function () {
  'use strict';

  angular
    .module('nabu')
    .controller('Points4RouteController', Points4Route);

  /** @ngInject */
  function Points4Route($timeout, $routeParams, webDevTec, toastr, nabuData) {
    var vm = this;

    vm.nabu = nabuData;
    //vm.record = nabuData.nabu.data.route[id];
    vm.params = $routeParams;
    
    vm.back = function(){
      history.back();
    }

    vm.filterFunction = function(element) {
      return ''+element.route_id === ''+$routeParams.routeId;
    };

    vm.countQuestions = function(id){
      var count = 0;
      vm.nabu.data.multiple_choice.forEach(function(question){
        if (question.point_id === id){
          count+=1;
        }
      });      
      return count;
    }

  }
})();
