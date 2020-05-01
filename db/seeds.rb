Book.destroy_all  
Author.destroy_all     

# jk = Author.create(first_name: "Jk", last_name: "Rowling")
# pr = Author.create(first_name: "Patrick", last_name: "Rothfuss")
# jt = Author.create(first_name: "JRR", last_name: "Tolkien")
# go = Author.create(first_name: "George", last_name: "Orwell")

# jk.books.create(title: "Harry Potter", genre: "fantasy" )
# pr.books.create(title: "Name of the wind")
# Book.create(title: "LOTR", author: jt)
# Book.create(title: "1984", author: go )




# join table entry
# book.genres.create(genre: "fantasy")

# &

# author = Author.create(first_name: "Brandon",
#     last_name: "Sanderson")
# author.books.create(title: "The Way Of Kings")
# book = Book.first
# book.genres.create(name: "fantasy")
# book.genres
# genre = Genre.first
# genre.books
# Genre.create()

# Genre.create(genre: "fantasy")
# Genre.create(genre: "horror")
# Genre.create(genre: "thriller")
# Genre.create(genre: "crime")
# Genre.create(genre: "biography")

#  Author.create!(
#      first_name: "Jk",
#      last_name: "Rowling"
#     ).books.create!([
#         { title: "Harry Potter"}
#     ])

#  Author.create!(
#      first_name: "Patrick",
#      last_name: "Rothfuss"
#     ).books.create!([
#         { title: "Name of the wind"}
#     ])

#  Author.create!(
#      first_name: "JRR",
#      last_name: "Tolkien"
#     ).books.create!([
#         { title: "LOTR"}
#     ])
   
#  Author.create!(
#      first_name: "George",
#      last_name: "Orwell"
#     ).books.create!([
#         { title: "1984"}
#     ])    
