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
    }

  }
})();
