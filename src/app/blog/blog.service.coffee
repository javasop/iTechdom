angular.module "itechdom"
.service "BlogService", ($http) ->

  webService = "assets/dummy/blog.json"

  getBlogs:()->
    return $http.get(webService)
