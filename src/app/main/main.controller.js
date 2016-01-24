(function () {
  'use strict';

  angular
    .module('nabu')
    .controller('MainController', MainController);

  /** @ngInject */
  function MainController($timeout, webDevTec, toastr, nabuData, $http) {
    var vm = this;

    vm.nabu = nabuData;

    vm.awesomeThings = [];
    vm.classAnimation = '';
    
    var username = 'test';
    var authtoken = 'test';
    var credentials = btoa(username + ':' + authtoken);
    var authorization = {'Authorization': 'Basic ' + credentials};
    //var header = { headers: authorization }    
    
    $http({
      method: 'GET',
      url: 'http://localhost/nabu/index.php/fragen/question_id/1',
      headers: authorization,
      withCredentials: true
    }).then(function successCallback(response) {
      console.log('CORS TEST', response.data);
      if (response.data.error){
        console.log('LOGIN FAILED', response.data.error);
      }
      // this callback will be called asynchronously
      // when the response is available
    }, function errorCallback(response) {
      console.log('CORS TEST ERROR', response);
      // called asynchronously if an error occurs
      // or server returns response with an error status.
    });
    
    
    //POST DEMO

    
    $http({
      method: 'PUT',
      url: 'http://localhost/nabu/index.php/fragen/question_id/1',
      headers: {
        //'Content-Type': 'application/x-www-form-urlencode d'//,
        'Authorization': 'Basic ' + credentials
      },
      // transformRequest: function(obj) {
      //   var str = [];
      //   for(var p in obj)
      //   str.push(encodeURIComponent(p) + "=" + encodeURIComponent(obj[p]));
      //   return str.join("&");
      // },
      withCredentials: true,
      data: {hint2: 'Update: ' + new Date().getTime()}
    }).then(function successCallback(response) {
      console.log('CORS TEST', response.data);
      if (response.data.error){
        console.log('LOGIN FAILED', response.data.error);
      }
      // this callback will be called asynchronously
      // when the response is available
    }, function errorCallback(response) {
      console.log('CORS TEST ERROR', response);
      // called asynchronously if an error occurs
      // or server returns response with an error status.
    });    
  
  
    //vm.creationDate = 1448950826720;
    // vm.showToastr = showToastr;

    //activate();

    // function activate() {
    //   getWebDevTec();
    //   $timeout(function () {
    //     vm.classAnimation = 'rubberBand';
    //   }, 4000);
    // }

    // function showToastr() {
    //   toastr.info('Fork <a href="https://github.com/Swiip/generator-gulp-angular" target="_blank"><b>generator-gulp-angular</b></a>');
    //   vm.classAnimation = '';
    // }

    // function getWebDevTec() {
    //   vm.awesomeThings = webDevTec.getTec();

    //   angular.forEach(vm.awesomeThings, function (awesomeThing) {
    //     awesomeThing.rank = Math.random();
    //   });
    // }
  }
})();
