class GroupController < ApplicationController


	def index
		@@user_name = current_user.name
		@@all_groups = current_user.groups

	end

	def new
	end

	def create
		@user_name = current_user.name
		@all_groups = current_user.groups

		# returns all the group members params["groups"]["members"]
		render 'index'
	end
end
