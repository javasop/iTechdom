angular.module "itechdom"
.directive('portfolioGrid', () ->
  templateUrl: 'components/portfolioGrid/portfolioGrid.html'
  scope: {
    connectWith:"=",
  }
  restrict: 'E'
  link: (scope, element, attrs) ->

  controller: ($rootScope, $scope,portfolioGridService) ->


    portfolioGridService.getPortfolioList().success((portfolios)->

      for element in portfolios
        if !element.url
          element["url"] = "/assets/images/portfolio/"+element["image"]
      $scope.portfolios = portfolios

    )



)
