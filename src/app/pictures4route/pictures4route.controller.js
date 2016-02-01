(function () {
  'use strict';

  angular
    .module('nabu')
    .controller('Pictures4RouteController', Pictures4Route);

  /** @ngInject */
  function Pictures4Route($timeout, $routeParams, webDevTec, toastr, nabuData) {
    var vm = this;

    vm.nabu = nabuData;
    //vm.record = nabuData.nabu.data.route[id];
    vm.params = $routeParams;
    
    vm.back = function(){
      history.back();
    }

    vm.data = {
      link: ''
    };
    vm.editId= false;

    vm.edit = function(picture){
      var id = picture.picture_id;
      vm.editId = id;
      vm.data.link = picture.link;
    }
    
    vm.save = function(picture){
      picture._save = true;
      var data = {
        link:vm.data.link,
        picture_id: picture.picture_id,
        _temp: true
      }
      nabuData.update('preview_pictures', data, function(err, data){
        if (err){
          
        } else {
          picture.link = vm.data.link;
          vm.editId = false;          
        }
      })
      console.log('')

    }   
    
    vm.cancel = function(){
      vm.editId = false;
    }         


    vm.new = function(routeId){
      var data = {
        route_id: routeId,
        link: 'http://lorempixel.com/400/200/nature/'
      };
      nabuData.new('preview_pictures', data, function(err, data){
        if (err){
          console.log('Error creating record: ', err);
        } else {
          console.log('New record created: ', data);
        }
      });
    };
    
    vm.drop = function(rec){
      nabuData.drop('preview_pictures', rec, function(err, data){
        if (err){
          console.log('Error deleting record: ', err);
        } else {
          console.log('Record deleted: ', data);
        }
        
      });
    };

  }
})();
