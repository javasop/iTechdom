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

    $scope.contact = [
      {"text":"Best ideas for your<br/> business","image":"assets/images/itechdom.png"},
      {"text":"We build brands that <br/>build business"}
    ]



)
