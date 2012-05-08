# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Author.create! name: "John Author"
Author.create! name: "Jane Author"
Author.create! name: "Bill Author"
Author.create! name: "Paul Author"

authors = Author.all
Book.create! name: "My Favourite Book", isbn: "some_isbn", author: authors.first
Book.create! name: "My Fifth Favourite Book", isbn: "some_isbn", author: authors.first
Book.create! name: "My Second Favourite Book", isbn: "some_isbn", author: authors.second
Book.create! name: "My Third Favourite Book", isbn: "some_isbn", author: authors.third
Book.create! name: "My Fourth Favourite Book", isbn: "some_isbn", author: authors.fourth

Tag.create! name: "Good"
Tag.create! name: "Great"
Tag.create! name: "Crap"
Tag.create! name: "Pathetic"
Tag.create! name: "Amazing"
Tag.create! name: "Soso"

books = Book.all
books.first.tags << Tag.all[0..2]
books.second.tags << Tag.all[1..4]
books.third.tags << Tag.all[1..3]
books.fourth.tags << Tag.all[4..5]
books.fifth.tags << Tag.all[1..2]