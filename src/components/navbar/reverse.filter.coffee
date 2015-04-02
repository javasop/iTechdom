angular.module "itechdom"
.filter 'reverse', ()->
  (items) ->
    items.slice().reverse()
