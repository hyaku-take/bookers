class BooksController < ApplicationController
  def new
     
  end

  def index
    @book = Book.new 
    @books = Book.all
  end
  
  def create
     @bbbook = Book.new(book_params)
     if  @bbbook.save
        flash[:notice] = "Book was successfully created."
         redirect_to  book_path(@bbbook.id), method: :get
     else
      render :new
     end  
     
  end  

  def show
    @bbook = Book.find(params[:id])
    
  end

  def edit
     @bbook = Book.find(params[:id])
  end
  
  def update
    @llist = Book.find(params[:id])
    if @llist.update(book_params)
     flash[:notice] = "Book was successfully updated."
     redirect_to book_path(@llist.id)
    else
      render :eedit
    end
    
  end  
  
  def destroy
  @list = Book.find(params[:id])
    @list.destroy
    flash[:notice] = "Book was successfully destroyed." 
    redirect_to books_path
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end  
  
end
