angular.module "itechdom"
.directive('navbar', () ->
  templateUrl: 'components/navbar/navbar.html'
  scope: {
    connectWith:"=",
  }
  restrict: 'E'
  link: (scope, element, attrs) ->

  controller: ($rootScope, $scope) ->


    $scope.checked = false

    $scope.check = ()->
      $scope.checked = !$scope.checked

    $(document).mouseup((e)->

      container = $(".ng-pageslide")
      if (!container.is(e.target) && container.has(e.target).length == 0 && !$(e.target).hasClass('mobile-button'))
        $scope.checked = false
        container.hide()
    )

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
