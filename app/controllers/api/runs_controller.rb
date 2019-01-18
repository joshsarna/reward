class Api::RunsController < ApplicationController
  def create
    @run = Run.new(
      user_id: current_user.id,
      distance: params[:distance],
      date: params[:date] || Time.now
    )
    @run.save
    current_user.check_earnings
    render 'show.json.jbuilder'
  end
end
