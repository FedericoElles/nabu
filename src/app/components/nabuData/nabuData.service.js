(function () {
  'use strict';

  angular
    .module('nabu')
    .service('nabuData', nabuData);

  /** @ngInject */
  function nabuData($http, $log) {
    var CONFIG = {
      url: '/sync.php',
      user: '',
      pass: ''
    };
    var that = this;
    this.ready = false;
    this.data;
    
    if (location.href.indexOf('localhost') > -1){
      CONFIG.url = 'http://localhost/nabu/sync.php';
      CONFIG.user = 'test';
      CONFIG.pass = 'test';
    }


    function refresh(){
      $http({
        method: 'GET',
        url: CONFIG.url
      }).then(function (response) {
        that.ready = true;
        that.data = response.data;
        $log.log('data', that.data);
      }, function () { //response
        this.data = {};
      });
    }
    
    refresh();
    
    this.update(table, col, id, data){
      
    }
    
  }

})();
