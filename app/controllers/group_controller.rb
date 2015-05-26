class GroupController < ApplicationController


	def index
		# binding.pry
		@user_name = current_user.name
		@all_groups = current_user.groups

	end

	def new
		binding.pry
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
		# binding.pry
    @group = Group.all.find_by_group_name(params[:group_name])
		@current_group_users = @group.users
	end

	def create
		@members = []
		id_array = params[:groups][:users_id]
		id_array.each {|single_id| @members << User.find_by_id(single_id)}
		@members.compact!
		@user_name = current_user.name
		@all_groups = current_user.groups
		current_user.groups.create(group_name: params["groups"]["group"]).save
		current_user.groups.last.users = @members
		render 'index'
	end

	def members
	end
end
