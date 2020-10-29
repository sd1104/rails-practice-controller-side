class UsersController < ApplicationController
  def show
    @tweets = Tweet.includes(:user).where(user_id: current_user.id).order("created_at DESC")
  end
end
