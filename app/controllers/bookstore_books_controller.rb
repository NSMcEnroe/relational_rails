class BookstoreBooksController < ApplicationController
  def index 
    @bookstore = Bookstore.find(params[:bookstore_id])
    @books = @bookstore.books
  end

  def new
    @bookstore = Bookstore.find(params[:bookstore_id])
    @books = @bookstore.books.new
  end

  def create
    book = Book.create(book_params)
    redirect_to "/bookstores"
  end

  private
  def book_params
    params.permit(:title, :author, :fiction, :cost, :date_published, :last_sold)
  end
end