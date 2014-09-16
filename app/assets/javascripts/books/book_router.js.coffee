BookRouter = angular.module("BookRouter", [
  "ngRoute"
])

class Router
  #think of this as a function
  constructor: (@routeProvider, @locationProvider)->
    console.log("Initialized Router")
    console.log("Setting Up")
    @routeProvider.
      when "/",
        templateUrl: "/book_templates",
        controller: "BooksCtrl as books"

    @locationProvider.html5Mode(true) #makes the # in the url gone. location provider is the service for modifying service later.

BookRouter.config(["$routeProvider", "$locationProvider", Router])


#coffeescript way of creating prototypes





BookRouter.config(["$routeProvider", "$locationProvider", Router])

BookRouter.config ["$httpProvider", ($httpProvider)->
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
]