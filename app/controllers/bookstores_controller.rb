class BookstoresController < ApplicationController
  def index
   @bookstores = Bookstore.order(:created_at).reverse
  end

  def show
    @bookstore = Bookstore.find(params[:id])
  end

  def new
  end
  
end