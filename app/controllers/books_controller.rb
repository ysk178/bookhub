class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    Book.create(book_params)
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
  end

  private
  def book_params
    params.require(:book).permit(:title, :image, :text)
  end
end
