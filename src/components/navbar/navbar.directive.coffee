angular.module "itechdom"
.directive('navbar', () ->
  templateUrl: 'components/navbar/navbar.html'
  scope: {
    connectWith:"=",
  }
  restrict: 'E'
  link: (scope, element, attrs) ->

  controller: ($rootScope, $scope) ->

    $scope.menuItems = [
      {"title":"Home","url":"home"},
      {"title":"Services","url":"services"},
      {"title":"Portfolio","url":"portfolio"},
      {"title":"Contact","url":"contact"}
    ]

)
