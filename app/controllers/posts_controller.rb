class PostsController < ApplicationController

before_filter :authenticate_admin!, :except => [:index]

def index
	@posts = Post.all
end

def show
	@posts = Post.find(params[:id])
end

def new

end

def create

end

def edit

end

def update

end

def delete

end

private 

def post_params 
  params.require(:post).permit( :title, :content, :link) 
end 

end
