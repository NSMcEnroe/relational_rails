class BookstoresController < ApplicationController
  def index
   @bookstores = Bookstore.order(:created_at).reverse
  end

  def show
    @bookstore = Bookstore.find(params[:id])
  end

  def new
  end

  def create
    bookstore = Bookstore.create(bookstore_params)
    redirect_to "/bookstores"
  end

  def edit
    @bookstore = Bookstore.find(params[:id])
  end

  def update
    bookstore = Bookstore.find(params[:id])
    bookstore.update(bookstore_params)
    redirect_to '/bookstores'
  end

  def destroy
    bookstore = Bookstore.find(params[:id])
    bookstore.destroy
    redirect_to '/bookstores'
  end

  private

  def bookstore_params
    params.permit(:name, :currently_open, :revenue, :opening, :fiscal_end_year)
  end
  
end