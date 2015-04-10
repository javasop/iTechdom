angular.module "itechdom"
.directive('comingSoon', () ->
  templateUrl: 'components/comingSoon/comingSoon.html'
  scope: {
    connectWith:"=",
  }
  restrict: 'E'
  link: (scope, element, attrs) ->

  controller: ($rootScope, $scope) ->




)
