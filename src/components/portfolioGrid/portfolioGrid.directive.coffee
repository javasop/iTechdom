angular.module "itechdom"
.directive('portfolioGrid', () ->
  templateUrl: 'components/portfolioGrid/portfolioGrid.html'
  scope: {
    connectWith:"=",
  }
  restrict: 'E'
  link: (scope, element, attrs) ->

  controller: ($rootScope, $scope) ->

    $scope.myInterval = 5000

    $scope.portfolio = [
      {"text":"Best ideas for your<br/> business","image":"assets/images/itechdom.png"},
      {"text":"We build brands that <br/>build business"}
    ]



)
