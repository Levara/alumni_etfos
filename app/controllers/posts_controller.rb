class PostsController < ApplicationController

before_filter :authenticate_admin!, :except => [:posts]
layout "admin_layout"

def index
	@posts = Post.all
end

def show
	@post = Post.find(params[:id])
end

def new
	@post = Post.new
end

def create
	@post = Post.new(post_params)
	if @post.save
		redirect_to(:action => 'index')
	else
		render('new')
	end
end

def edit
	@post = Post.find(params[:id])
end

def update
	@post = Post.find(params[:id])
	if @post.update_attributes(post_params)
		redirect_to(:action => 'show', :id => @post.id)
	else
		render('edit')
	end
end

def delete
	@post = Post.find(params[:id])
end

#budući da ne postoji view za destroy ne treba nam varijabla s @
def destroy
	post = Post.find(params[:id])
	post.destroy 
	redirect_to(:action => 'index', :id => post.id)
end

protected

def post_params 
	params.require(:post).permit( :title, :content, :author, :image) 
end 


end
