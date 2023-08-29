class BookstoreBooksController < ApplicationController
  def index 
    @bookstore = Bookstore.find(params[:bookstore_id])
    @books = if params[:sorted]
      @bookstore.books.order(:title)
    else
      @bookstore.books
    end
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

  def sort
    bookstore = Bookstore.find(params[:bookstore_id])
    @books = bookstore.books.order(:title)
    render 'index'
  end

  private
  def book_params
    params.permit(:title, :author, :fiction, :cost, :date_published, :last_sold)
  end
end