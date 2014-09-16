BookCtrls = angular.module("BookCtrls", [])

class BooksCtrl

  constructor: (@scope, @Book)->
    @greeting = "hello world!"
    @Book.all()
    return this #coffeescript always returns last thing

  addBook: (newBook) ->
    @Book.create(newBook)
    .success (data) ->
      console.log(data)

  sayHello: ()->
    "hello there again!!"

BookCtrls.controller("BooksCtrl", ["$scope", "Book", BooksCtrl])