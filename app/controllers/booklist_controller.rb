class BooklistController < ApplicationController
# device lesson
before_action :authenticate_user!

#   def index
#     @books = current_user.books

#   end
# end

# <% @books.each do |book| %>
#   <p><%= link_to book.title, book_path(book) %></p>
# <% end %>
