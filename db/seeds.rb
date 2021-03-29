# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

response = RestClient.get("https://api.nytimes.com/svc/books/v3/lists/current/hardcover-fiction.json?api-key=#{ENV["KEY"]}")
#byebug
books = JSON.parse(response)["results"]["books"]
#create a Ruby book object with all the info in the books array, use an iterator
books.each do |book|
    Book.create(title: book["title"], author: book["author"], publisher: book["publisher"], description: book["description"]) 
# binding.pry

end
