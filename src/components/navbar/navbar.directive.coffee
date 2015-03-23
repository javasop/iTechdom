angular.module "itechdom"
.directive('navbar', () ->
  templateUrl: 'components/navbar/navbar.html'
  scope: {
    connectWith:"=",
  }
  restrict: 'E'
  link: (scope, element, attrs) ->

  controller: ($rootScope, $scope) ->


#    $scope.checked = true

    $scope.leftMenu = [
      {"title":"Home","url":"home"},
      {"title":"Services","url":"services"}
      {"title":"About Us","url":"about"}
    ]
    $scope.rightMenu = [
      {"title":"Portfolio","url":"portfolio"},
      {"title":"Contact","url":"contact"}
      {"title":"Blog","url":"blog"}
    ]

)
