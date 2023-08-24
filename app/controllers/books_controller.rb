class BooksController < ApplicationController
  def index
   @books = Bookstore.all
  end
end