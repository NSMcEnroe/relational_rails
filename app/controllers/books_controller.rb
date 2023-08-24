class BookstoresController < ApplicationController
  def index
   @books = Bookstore.all
  end
end