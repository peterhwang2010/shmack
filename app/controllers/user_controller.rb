class UserController < ApplicationController
  # include UserHelper
  before_action :authenticate_user!, only: [:show, :edit, :update, :profile]

  # def create
  #   @user = User.new(user_params)
  #   set_image if user_params[:image].nil? && File.exists?(@user.twitter_image_location)
  #   if @user.valid?
  #     get_new_skills
  #     @user.save
  #     log_in
  #     redirect_to jobs_path
  #   else
  #     render 'new'
  #   end
  # end
  def profile
    redirect_to ((current_user.sign_in_count == 0) ? '/user/edit' : '/user/show' )
  end

  def groups
    @user = current_user
    @user.groups
  end

  def show
    render 'profile' 
  end

  def edit
    redirect_to root_path 
  end

  def index
    binding.pry
  end

  def update
    binding.pry
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to root_path
  end

  private
 def user_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end
end
