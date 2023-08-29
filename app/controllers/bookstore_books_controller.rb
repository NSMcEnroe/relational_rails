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
    @bookstore = Bookstore.find(params[:bookstore_id])
    @book = @bookstore.books.create(book_params)
    redirect_to "/bookstores/#{@bookstore.id}/books"
  end

  private
  def book_params
    params.permit(:title, :author, :fiction, :cost, :date_published, :last_sold)
  end
end