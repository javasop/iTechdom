angular.module "itechdom"
.directive('contactInfo', () ->
  templateUrl: 'components/contactInfo/contactInfo.html'
  scope: {
    connectWith:"=",
  }
  restrict: 'E'
  link: (scope, element, attrs) ->

  controller: ($rootScope, $scope,contactInfoService) ->

    contactInfoService.getContactText().success((contact)->

      $scope.contact = contact

    )

)
