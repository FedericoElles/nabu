(function () {
  'use strict';

  angular
    .module('nabu')
    .controller('Edit1PointController', Edit1PointController);

  /** @ngInject */
  function Edit1PointController($timeout, $routeParams, webDevTec, toastr, nabuData) {
    var CONFIG = {
      table: 'points'
    };     
    var vm = this;

    vm.nabu = nabuData;
    //vm.record = nabuData.nabu.data.route[id];
    vm.params = $routeParams;
    
    vm.back = function(){
      history.back();
    }
  
    vm.filterFunction = function(element) {
      return ''+element.id === ''+$routeParams.id;
    };

    vm.reset = function(item, itemBackup){
      nabuData.applyDiff(item, nabuData.getBackup(CONFIG.table, item));  
    }    

    vm.save = function(item, itemBackup){
      vm.status = nabuData.gui.saving;
      var changeData = nabuData.diff(item, nabuData.getBackup(CONFIG.table, item));
      nabuData.update(CONFIG.table, changeData, function(err, data){
        if (err){
          vm.status = nabuData.gui.savingFailed;
        } else {
          vm.status = nabuData.gui.savingSuccess;
          //update Backup
          nabuData.applyDiff(nabuData.getBackup(CONFIG.table, item), changeData);     
        }
      })
    }

  }
})();
