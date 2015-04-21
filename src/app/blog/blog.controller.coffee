angular.module "itechdom"

  .controller "BlogCtrl", ($scope,BlogService) ->

    BlogService.getBlogs().success((blogs)->
      $scope.blogs = blogs
    )
