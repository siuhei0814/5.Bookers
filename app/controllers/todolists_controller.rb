class TodolistsController < ApplicationController

  def top
  end

  def index
    @books = Book.all
  end

# newアクションいらない？
  # def new
  #   @book = Book.new
  # end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to '/todolists'
    else
      render :index
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to todolist_path(@book.id)
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to '/todolists'
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
