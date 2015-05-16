class GroupController < ApplicationController


	def index
		@user_name = current_user.name
		@all_groups = current_user.groups

	end

end
