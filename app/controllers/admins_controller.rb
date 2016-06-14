class AdminsController < ApplicationController

before_action :authenticate_admin!
layout 'admin_layout'

=begin 
KORISNIKE BI TREBALO MOĆI
	- pretraživati
	- sortirati
	- pagination
	- admin has many posts, post belongs to admin
	- validations
=end

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
