angular.module "itechdom"
.directive('servicesGrid', () ->
  templateUrl: 'components/servicesGrid/servicesGrid.html'
  scope: {
    connectWith:"=",
  }
  restrict: 'E'
  link: (scope, element, attrs) ->

  controller: ($rootScope, $scope,servicesGridService) ->

    servicesGridService.getServiceList().success((service)->

      $scope.services = service

    )

)
