class BooksController < ApplicationController
  def index
  	@users = Book.all
  end
  def addRecord
     Book.create(:access_no=> params[:b_access_no],:title=> params[:b_title],:author=> params[:b_author],:edition=> params[:b_edition],:publisher=> params[:b_publisher])
     render 'index'
  end
  def search
  end
end
