(function () {
  'use strict';

  angular
    .module('nabu')
    .controller('Edit1RouteController', Edit1RouteController);

  /** @ngInject */
  function Edit1RouteController($timeout, $routeParams, webDevTec, toastr, nabuData) {
    var CONFIG = {
      table: 'routes'
    };
    
    var vm = this;
    vm.status = '';

    vm.nabu = nabuData;
    vm.params = $routeParams;
    
    vm.back = function(){
      history.back();
    }
    
    vm.reset = function(item, itemBackup){
      nabuData.applyDiff(item, itemBackup);  
    }    

    vm.save = function(item, itemBackup){
      vm.status = nabuData.gui.saving;
      var changeData = nabuData.diff(item, itemBackup);
      nabuData.update(CONFIG.table, changeData, function(err, data){
        if (err){
          vm.status = nabuData.gui.savingFailed;
        } else {
          vm.status = nabuData.gui.savingSuccess;
          //update Backup
          nabuData.applyDiff(itemBackup, changeData);    
        }
      })
    }

  }
})();
