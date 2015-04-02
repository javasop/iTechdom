angular.module "itechdom"
.service "carouselService", ($http) ->

  webService = "assets/dummy/carousel.json"

  data : {
    carousel:[]
  }
  getCarouselList:()->
    return $http.get(webService)
