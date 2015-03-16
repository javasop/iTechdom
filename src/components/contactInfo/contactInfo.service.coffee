angular.module "itechdom"
.service "contactInfoService", ($http) ->

  webService = "assets/dummy/contact.json"

  data : {
    contact:[]
  }


  getContactText:()->
    return $http.get(webService)

