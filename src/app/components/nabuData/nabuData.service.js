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
    
    var ctrl = {
      isLoggedIn: false
    };
    
    if (location.href.indexOf('localhost') > -1){
      CONFIG.url = 'http://localhost/nabu/';
      //CONFIG.user = 'test';
      //CONFIG.pass = 'test';
    }
    
    var MAP = {
      preview_pictures: 'routen_bilder',
      multiple_choice: 'fragen',
      routes: 'routen',
      points: 'punkte'
    };
    
    var PRIMARY = {
      preview_pictures: 'picture_id',
      multiple_choice: 'question_id',
      routes: 'route_id',
      points: 'point_id'
    }
    
    function getHeaders(){
      var credentials = btoa(CONFIG.user + ':' + CONFIG.pass);
      var authorization = {'Authorization': 'Basic ' + credentials};
      return authorization;
    }
    


    function refresh(){
      $http({
        method: 'GET',
        url: CONFIG.url + 'sync.php'
      }).then(function (response) {
        that.ready = true;
        that.data = response.data;
        $log.log('data', that.data);
      }, function () { //response
        this.data = {};
      });
    }
    
    refresh();
    
    /**
     * table
     * data - _x attributes are stripped
     * cb(err, data)
     */
    this.update = function(table, data, cb){
      var clearData = {};
      for (var x in data){
        if (x[0] !== '_'){
          clearData[x] = data[x];
        }
      }
      
      var headers = getHeaders();
      $http({
        method: 'PUT',
        url: CONFIG.url + 'index.php/'+MAP[table]+'/'+PRIMARY[table]+'/'+data[PRIMARY[table]],
        headers: headers,
        withCredentials: true,
        data: clearData
      }).then(function successCallback(response) {
        console.log('CORS UPDATE', response.data);
        if (response.data.error){
          console.log('LOGIN FAILED', response.data.error);
          cb(data);
        } else {
          cb(undefined, data);
        }

        // this callback will be called asynchronously
        // when the response is available
      }, function errorCallback(response) {
        console.log('CORS TEST ERROR', response);
        cb(response);
        // called asynchronously if an error occurs
        // or server returns response with an error status.
      }); 
    };



    /**
     * 
     */
    this.isLoggedIn = function(){
      return ctrl.isLoggedIn;
    }

    /**
     */
    this.login = function(user, pass, cb){
      CONFIG.user = user;
      CONFIG.pass = pass;
      ctrl.isLoggedIn = false;
      
      var headers = getHeaders();
      $http({
        method: 'GET',
        url: CONFIG.url + 'index.php',
        headers: headers,
        withCredentials: true
      }).then(function successCallback(response) {
        console.log('CORS UPDATE', response.data);
        if (response.data.error && response.data.error.code === 401){
          console.log('LOGIN FAILED', response.data.error);
          cb(response.data);
        } else {
          cb(undefined, response.data);
          ctrl.isLoggedIn = true;
        }

        // this callback will be called asynchronously
        // when the response is available
      }, function errorCallback(response) {
        console.log('CORS TEST ERROR', response);
        cb(response);
        // called asynchronously if an error occurs
        // or server returns response with an error status.
      }); 
    };
    
   
  }

})();
