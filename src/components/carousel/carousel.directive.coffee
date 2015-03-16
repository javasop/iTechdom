angular.module "itechdom"
.directive('itechdomCarousel', () ->
  templateUrl: 'components/carousel/carousel.html'
  scope: {
    connectWith:"=",
  }
  restrict: 'E'
  link: (scope, element, attrs) ->

  controller: ($rootScope, $scope) ->

    $scope.slides = [
      {"text":"Best ideas for your business","image":"assets/images/stock.png"},
      {"text":"We build brands that build business","image":"assets/images/stock.png"}
    ]

)
