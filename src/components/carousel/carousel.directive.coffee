angular.module "itechdom"
.directive('itechdomCarousel', () ->
  templateUrl: 'components/carousel/carousel.html'
  scope: {
    connectWith:"=",
  }
  restrict: 'E'
  link: (scope, element, attrs) ->

  controller: ($rootScope, $scope,carouselService) ->

    carouselService.getCarouselList().success((carousels)->
      console.log carousels
      $scope.slides = carousels

    )


)
