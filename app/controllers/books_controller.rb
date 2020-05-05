class BooksController < ApplicationController
  #  skip_before_action :verify_authenticity_token
  #  before_action :setup_data
   before_action :authenticate_user!, only: :new
   before_action :authorize, only: [:new, :create]

  
  def index
    @books = Book.all
    @author = Author.all
    # @books = Book.order(id: :asc)
  end

  def contact
  end

  def show
    @book = Book.find(params[:id])
#Before database
    # @book = @books[params[:id].to_i]
  end

  def new
    @book = Book.new
    @author = Author.all
    @genre = Genre.all
       
  end

  def create

      # @books = Book.create(title: params[:title], author: params[:author])
      # or
      @author = Author.all
      @genre = Genre.all

      @book = Book.new(book_params)
      @book.picture.attach(params[:book][:picture])
      if @book.save
        redirect_to show_path(@book)
      else
        flash[:alert] = @book.errors.full_messages.join() 
        render "new"
      end

      #@books1st = Book.create!(params.require(:book).permit
      #(:title, :author))
      # redirect_to show_path(@books) # or just (@books.id) would work too
#Before database
    # @books << {
    #   title: params[:title],
    #   author: params[:author]
    # }
    # render json: @books
  end



  def update

    # # Find the celeb id
    # @book = @books[params[:id].to_i]
    # # Update the celeb from params
    # # Return the celeb
    # @book[:title] = params[:title]
    # @book[:author] = params[:author]
    # render json: @book
  end

  def destroy
#Before database
    # @books.delete_at(params[:id].to_i)
    # render json: @books
  end

private

def authorize
  if !current_user.has_role?(:admin)
    flash[:alert] = " no auhtorized"
    redirect_to root_path
  end
end

  def book_params
   params.require(:book).permit(:title, :author_id, :genre_ids => [])
  end 

#   def setup_data
#       @books = [
#       { title: "Harry Potter", author: "J.K Rowling" },
#       { title: "Name of the wind", author: "Patrick Rothfuss" },
#       { title: "LOTR", author: "JRR Tolkien" },
#       { title: "1984", author: "George Orwell" }
#       ]

#        @user = "Luke"
#   end

# before_action :test_before
# after_action :test_after

# def test_before
#     puts "before ran"
# end

# def test_after
#     puts "after ran"
# end

    #redirect_to "/" or home_path
end
