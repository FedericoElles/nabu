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

    vm.new = function(pointId){
      var data = {
        point_id: pointId,
        question_text: 'Neue Frage...'
      };
      nabuData.new('multiple_choice', data, function(err, data){
        if (err){
          console.log('Error creating record: ', err);
        } else {
          console.log('New record created: ', data);
        }
      });
    };
    
    vm.drop = function(rec){
      nabuData.drop('multiple_choice', rec, function(err, data){
        if (err){
          console.log('Error deleting record: ', err);
        } else {
          console.log('Record deleted: ', data);
        }
        
      });
    };

  }
})();
