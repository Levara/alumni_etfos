class StaticPagesController < ApplicationController
  
  def home
  end

  def about
  end

  def statut
  end

  def posts
	 @posts = Post.all.paginate(:page => params[:page], :per_page => 5)
  end

  def single_post
    @post = Post.find(params[:id])
  end

end
