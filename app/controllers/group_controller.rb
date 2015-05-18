class GroupController < ApplicationController


	def index
		@user_name = current_user.name
		@all_groups = current_user.groups

	end

	def new
	end

	def create
		@user_name = current_user.name
		@all_groups = current_user.groups
		current_user.groups.create(group_name: params["groups"]["group"]).save
		render 'index'
	end
end
