angular.module "itechdom"
.service "portfolioGridService", ($http) ->

  webService = "assets/dummy/portfolio.json"

  data : {
    portfolio:[]
  }



  getPortfolioList:()->
    return $http.get(webService)
