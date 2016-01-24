(function() {
  'use strict';

  angular
    .module('nabu')
    .config(routeConfig);

  function routeConfig($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'app/main/main.html',
        controller: 'MainController',
        controllerAs: 'main',
        activeTab: 'main'
      })
      .when('/routen', {
        templateUrl: 'app/routen/routen.html',
        controller: 'RoutenController',
        controllerAs: 'ctrl',
        activeTab: 'routen'
      })
      .when('/points4route/:routeId', {
        templateUrl: 'app/points4route/points4route.html',
        controller: 'Points4RouteController',
        controllerAs: 'ctrl',
        activeTab: 'routen'
      })
      .when('/pictures4route/:routeId', {
        templateUrl: 'app/pictures4route/pictures4route.html',
        controller: 'Pictures4RouteController',
        controllerAs: 'ctrl',
        activeTab: 'routen'
      })
      .when('/questions4point/:pointId', {
        templateUrl: 'app/questions4point/questions4point.html',
        controller: 'Questions4PointController',
        controllerAs: 'ctrl',
        activeTab: 'routen'
      })
      .when('/edit1route/:id', {
        templateUrl: 'app/edit1route/edit1route.html',
        controller: 'Edit1RouteController',
        controllerAs: 'ctrl',
        activeTab: 'routen'
      })
      .when('/edit1point/:id', {
        templateUrl: 'app/edit1point/edit1point.html',
        controller: 'Edit1PointController',
        controllerAs: 'ctrl',
        activeTab: 'routen'
      })    
      .when('/edit1question/:id', {
        templateUrl: 'app/edit1question/edit1question.html',
        controller: 'Edit1QuestionController',
        controllerAs: 'ctrl',
        activeTab: 'routen'
      })          
      .otherwise({
        redirectTo: '/'
      });
  }

})();
