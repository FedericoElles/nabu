(function () {
  'use strict';

  angular
    .module('nabu')
    .controller('RoutenController', RoutenController);

  /** @ngInject */
  function RoutenController($timeout, webDevTec, toastr, nabuData) {
    var vm = this;

    vm.nabu = nabuData;
    
    vm.countPictures = function(id){
      var count = 0;
      vm.nabu.data.preview_pictures.forEach(function(pic){
        if (pic.route_id === id){
          count+=1;
        }
      });
      return count;
    }

    vm.countPoints = function(id){
      var count = 0;
      vm.nabu.data.points.forEach(function(pic){
        if (pic.route_id === id){
          count+=1;
        }
      });      
      return count;
    };
    
    vm.new = function(){
      var data = {
        route_name: 'Neue Route'
      };
      nabuData.new('routes', data, function(err, data){
        if (err){
          console.log('Error creating record: ', err);
        } else {
          console.log('New record created: ', data);
        }
      });
    };
    
    vm.drop = function(rec){
      nabuData.drop('routes', rec, function(err, data){
        if (err){
          console.log('Error deleting record: ', err);
        } else {
          console.log('Record deleted: ', data);
        }
        
      });
    };
    

  }
})();
