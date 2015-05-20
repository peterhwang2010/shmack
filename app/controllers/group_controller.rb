class GroupController < ApplicationController


	def index
		@user_name = current_user.name
		@all_groups = current_user.groups

	end

	def new
	end

	def destroy
		@user_name = current_user.name
		@all_groups = current_user.groups
		@group = Group.where(id: params[:id])
		@group.first.destroy
		flash[:notice] = "Deleted group!"
		render 'index'
	end

	def profile
		@current_group = current_user.groups.find_by(group_name: params["group_name"])
		@current_group_users = @current_group.users
	end

	def create
		@user_name = current_user.name
		@all_groups = current_user.groups
		current_user.groups.create(group_name: params["groups"]["group"]).save
		render 'index'
	end
end
