class UsersController < ApplicationController

  before_filter :require_user_signed_in, only: [:vote]

  #users_controller.rb
  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def vote

    @user = User.find(params[:id])
    direction = params[:direction]

    # Make sure we've specified a direction
    raise "No direction parameter specified to #vote action." unless direction

    # Make sure the direction is valid
    unless ["like", "bad"].member? direction
      raise "Direction '#{direction}' is not a valid direction for vote method."
    end

    @user.vote_by voter: current_user, vote: direction

    redirect_to action: :index
  end
end
