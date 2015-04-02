angular.module "itechdom"
.service "servicesGridService", ($http) ->

  webService = "assets/dummy/services.json"

  data : {
    services:[]
  }

  getServiceList:()->
    return $http.get(webService)
