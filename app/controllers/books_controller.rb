class BooksController < ApplicationController

  respond_to :xml, :json

  def index
    respond_with Book.all
  end

  def show
    respond_with Book.find(params[:id])
  end
end
