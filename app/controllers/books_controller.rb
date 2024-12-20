class BooksController < ApplicationController
  respond_to :html, :json

  def index
    @books = Book.all
    respond_to do |format|
      format.html
      format.json { render json: @books }
    end
  end

  def show
    @book = Book.find(params[:id])
  end
end
