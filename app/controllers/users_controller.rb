class UsersController < ApplicationController
before_action :authenticate_user!

def index
	@users = User.all
end

def show
	@user = User.find(params[:id])
end

def delete
	@user = User.find(params[:id])
end

def destroy
	@user = User.find(params[:id])
	@user.destroy
	redirect_to(:action => 'index')
end

end
