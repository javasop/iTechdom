angular.module "itechdom"
.service "BlogService", ($http) ->
  
  getBlogs:()->
    return $http.get(webService)

