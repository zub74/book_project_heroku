class BooksController < ApplicationController
  def HomePage
    @books = Book.all
  end

  def AddBook
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      flash[:notice] = "Book created successfully!"
      redirect_to({:controller => 'books', :action => 'HomePage'}) #need this because we're not redirecting to index, but HomePage (need to figure out how to change default index to HomePage)
    else
      render('AddBook')
    end
  end

  def update
    @book = Book.find(params[:id])
    if @book.update_attributes(book_params)
      flash[:notice] = "Book updated successfully!"
      redirect_to({:controller => 'books', :action => 'HomePage'}) #need this because we're not redirecting to index, but HomePage (need to figure out how to change default index to HomePage)
    else
      render('UpdateBook')
    end
  end

  def UpdateBook
    @book = Book.find(params[:id])
  end

  def Details
    @book = Book.find(params[:id])
  end

  def Delete
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:notice] = "'#{@book.title}' destroyed successfully!"
    redirect_to({:controller => 'books', :action => 'HomePage'})
  end

  def book_params
    params.require(:book).permit(:title, :author, :genre, :price, :'published_date')
  end
end
