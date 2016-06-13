class UsersController < ApplicationController

	before_action :authenticate_user!

	def show_profile
		@user = current_user
		render ('users/show_profile')
	end

end
