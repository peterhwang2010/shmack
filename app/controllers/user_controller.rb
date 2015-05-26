class UserController < ApplicationController
  # include UserHelper
  before_action :authenticate_user!, only: [:show, :edit, :update, :profile]

  def profile
    @goals = {}
    @user = current_user
    @user.groups
    @goals[:name] = []
    @goals[:name] << "win"
    @goals[:name] << "lose"


    render 'profile'
  end

  def groups
    @user = current_user
    @user.groups
  end

  def show
    @user = User.find_by_id(params[:id])
    render 'show' 
  end

  def edit
    render 'edit'
  end

  def index
    @users = User.all
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end
end
