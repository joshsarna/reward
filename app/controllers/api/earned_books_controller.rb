class Api::EarnedBooksController < ApplicationController
  def index
    @earned_books = current_user.earned_books.where(status: "earned")
    render 'index.json.jbuilder'
  end
end
