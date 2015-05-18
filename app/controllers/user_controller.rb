class UserController < ApplicationController
  before_action only: [:show, :edit, :update, :profile]

  def edit
    @user = current_user
  end

  def show
    redirect_to root_path
  end

  def update
    redirect_to "user/show"
  end
end
