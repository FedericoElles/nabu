(function () {
  'use strict';

  angular
    .module('nabu')
    .service('nabuData', nabuData);

  /** @ngInject */
  function nabuData($http, $log) {
    var that = this;
    this.ready = false;

    this.data;

    $http({
      method: 'GET',
      url: 'assets/data/test.json' //'http://app.nabu-station-l-k.de/sync.php'
    }).then(function (response) {
      that.ready = true;
      that.data = response.data;
      $log.log('data', that.data);
    }, function () { //response
      this.data = {};
    });
  }

})();
