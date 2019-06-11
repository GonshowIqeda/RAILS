class BooksController < ApplicationController
  def top
  end
  def index
    #初期化用
    #book1 = Book.new(Title:"book1", Body:"book11")
    #book1.save
    #book2 = Book.new(Title:"book2", Body:"book22")
    #book2.save
    @books = Book.all.order(created_at: :asc)
    @book = Book.new
  end

  def show
    #@id = params[:id]
    @book = Book.find_by(id:params[:id])
  end
  def edit
    @book = Book.find_by(id:params[:id])
  end
  def create
    @book = Book.new(book_params)
    @book.save
    flash[:notice] = "Book was successfully created."
    redirect_to("/books/#{@book.id}")

  end
  def update
    @book = Book.find_by(id: params[:id])
    @book.update(book_params)
    @book.save
    flash[:notice] = "Book was successfully updated."
    redirect_to ("/books/#{@book.id}")
  end
  def destroy
    @book = Book.find_by(id:params[:id])
    @book.destroy
    flash[:notice] = "Book was successfully destroyed."
    redirect_to("/books")
  end

  private
  def book_params
      params.require(:book).permit(:title, :body)
  end
end
