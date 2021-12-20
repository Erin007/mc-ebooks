class BooksController < ApplicationController
  def index
    @books = Book.first(100)
  end

  def show
    @books = Book.search(params[:book][:q])
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :isbn, :q)
  end
end
