# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

a = Author.create!(first_name: 'wang', last_name: 'gog')
b = Author.create!(first_name: 'wang', last_name: 'jimmy')
movies = Book.create([
    { name: "Star Wars" , price: "111", author: a},
    { name: "Star Wars11" , price: "211",author: b}
 ])
# Character.create(name: "Luke", movie: movies.first)
