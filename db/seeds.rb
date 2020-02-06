# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
bob = Author.create(name: 'Bob')
alice = Author.create(name: 'Alice')
Author.create(name: 'Roger')
Author.create(name: 'Mary')
Author.create(name: 'Singh')
Author.create(name: 'Elena')

Book.create(author: bob, title: 'Cats', clicks: 5)
Book.create(author: bob, title: 'Dogs', clicks: 10)
Book.create(author: bob, title: 'Rabbits', clicks: 5)
Book.create(author: bob, title: 'Mice', clicks: 10)
Book.create(author: bob, title: 'Wombats', clicks: 5)
Book.create(author: bob, title: 'Bugs', clicks: 10)

Post.create(author: bob, text: 'Boo')
Post.create(author: bob, text: 'Yay!')

Book.create(author: alice, title: 'Birds', clicks: 12)
Book.create(author: alice, title: 'Elephants', clicks: 7)

Post.create(author: alice, text: 'Hurrah')
Post.create(author: alice, text: "D'oh")
