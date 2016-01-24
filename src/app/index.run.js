(function() {
  'use strict';

  angular
    .module('nabu')
    .run(runBlock);

  /** @ngInject */
  function runBlock($log) {

    $log.debug('runBlock end');
  }

})();
