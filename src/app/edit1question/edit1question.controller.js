(function () {
  'use strict';

  angular
    .module('nabu')
    .controller('Edit1QuestionController', Edit1QuestionController);

  /** @ngInject */
  function Edit1QuestionController($timeout, $routeParams, webDevTec, toastr, nabuData) {
    var vm = this;

    vm.nabu = nabuData;
    //vm.record = nabuData.nabu.data.route[id];
    vm.params = $routeParams;
    
    vm.back = function(){
      history.back();
    }

  vm.filterFunction = function(element) {
    return ''+element.question_id === ''+$routeParams.id;
  };

  }
})();
