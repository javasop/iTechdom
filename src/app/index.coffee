angular.module "itechdom", ['ui.router', 'ui.bootstrap','ngScrollTo','ngSocial','pageslide-directive']
  .config ($stateProvider, $urlRouterProvider) ->
    $stateProvider
      .state "home",
        url: "/",
        templateUrl: "app/main/main.html",
        controller: "MainCtrl"

    $stateProvider
      .state "blog",
        url: "/blog",
        templateUrl: "app/blog/blog.html",
        controller: "BlogCtrl"

    $stateProvider
      .state "about",
        url: "/about",
        templateUrl: "app/about/about.html",
        controller: "AboutCtrl"



    $urlRouterProvider.otherwise '/'

