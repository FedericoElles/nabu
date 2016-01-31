(function () {
  'use strict';

  angular
    .module('nabu')
    .service('nabuData', nabuData);

  /** @ngInject */
  function nabuData($http, $log) {
    var that = this;
    this.ready = false;
    this.data; //stores data
    this.dataBackup; //stores backup of data         
    var ctrl = {
      isLoggedIn: false
    };    
    
    var CONFIG = {
      url: '/sync.php',
      user: '',
      pass: ''
    };
    
    this.gui = {
      saving: 'Speichere...',
      savingSuccess: 'Speichern erfolgreich!',
      savingFailed: 'Speichern fehlgeschlagen. Bitte Seite neu laden.'
    };
    
    
    //fetched stored password
    var storedAuth = localStorage.getItem('nabu-auth');
    if (typeof storedAuth === 'string'){
      var aStoredAuth = storedAuth.split('\n');
      if (aStoredAuth.length === 2){
        CONFIG.user = aStoredAuth[0]; 
        CONFIG.pass = aStoredAuth[1];
        ctrl.isLoggedIn = true;
        console.log('Auth from last time found.');
      }
    }
    


    
    //not signed in? go to homepage.
    if (ctrl.isLoggedIn === false && location.hash !== '#/'){
      location.href = '/';  
    }
   
    
    if (location.href.indexOf('localhost') > -1){
      CONFIG.url = 'http://localhost/nabu/';
    }
    
    var MAP = {
      preview_pictures: 'routen_bilder',
      multiple_choice: 'fragen',
      routes: 'routen',
      points: 'punkte'
    };
    
    var PRIMARY = {
      preview_pictures: 'picture_id',
      multiple_choice: 'id',
      routes: 'id',
      points: 'id'
    }
    
    function getHeaders(){
      var credentials = btoa(CONFIG.user + ':' + CONFIG.pass);
      var authorization = {'Authorization': 'Basic ' + credentials};
      return authorization;
    }
    


    function refresh(){
      var headers = getHeaders();      
      $http({
        method: 'GET',
        // headers: headers,
        // withCredentials: true,        
        url: CONFIG.url + 'sync.php'
      }).then(function (response) {
        that.ready = true;
        that.data = response.data;
        that.dataBackup = angular.copy(that.data);
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
     * Compares two objects and returns diff
     */
    this.diff = function(newObject, oldObject){
      var diffObject = {};
      for (var x in oldObject){
        if (oldObject[x] !== newObject[x] || x === 'id'){
          diffObject[x] = newObject[x];
        }
      }
      
      return diffObject;
    }

    /**
     * Apply changes from one object to another
     */
    this.applyDiff = function(origObject, changesObject){
      for (var x in changesObject){
          origObject[x] = changesObject[x];
      }
    }




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
          //store used + pass
          localStorage.setItem('nabu-auth', CONFIG.user + '\n' + CONFIG.pass);   
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
