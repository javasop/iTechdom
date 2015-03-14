angular.module "itechdom"
.directive('servicesGrid', () ->
  templateUrl: 'components/servicesGrid/servicesGrid.html'
  scope: {
    connectWith:"=",
  }
  restrict: 'E'
  link: (scope, element, attrs) ->

  controller: ($rootScope, $scope) ->

    $scope.myInterval = 5000

    $scope.services = [
      {"text":"Best ideas for your<br/> business","image":"assets/images/itechdom.png"},
      {"text":"We build brands that <br/>build business"}
    ]


)
