class BooksController < ApplicationController
  
  def top
    @book = Book.top
  end
  
  def new
    @book = Book.new
  end
  
  def create
    
    book=Book.new(book_params)
    
    book.save
    
    redirect_to '/top'
  end

  def index
    @books=Book.all
  end

  def show
    @books=Book.find(params{:id})
  end

  def edit
  end
  
  private
  def book_params
    params.require(:book).permit(:title,:body)
  end
end
