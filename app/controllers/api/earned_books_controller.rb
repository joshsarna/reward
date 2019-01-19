class Api::EarnedBooksController < ApplicationController
  def index
    @earned_books = current_user.earned_books.where(status: "earned")
    render 'index.json.jbuilder'
  end

  def update
    @earned_book = EarnedBook.find(params[:id])
    @earned_book.status = params[:status]
    @earned_book.save
    render 'show.json.jbuilder'
  end
end
