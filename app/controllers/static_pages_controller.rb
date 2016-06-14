class StaticPagesController < ApplicationController
  
  def home
  end

  def about
  end

  def statut
  end

  def contact
  end

  def posts
	 @posts = Post.all
  end

  def single_post
    @post = Post.find(params[:id])
  end

end
