class BookstoreBooksController < ApplicationController
  def index 
    bookstore = Bookstore.find(params[:bookstore_id])
    @books = bookstore.books
  end
end