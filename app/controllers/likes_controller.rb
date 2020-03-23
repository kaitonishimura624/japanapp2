class LikesController < ApplicationController
  before_action :set_post, only:[:create, :destroy]

  def index
    @all_ranks = Post.find(Like.group(:post_id).order('count(post_id) desc').limit(6).pluck(:post_id))

  end

  def create
    @like = Like.create(user_id: current_user.id, post_id: params[:post_id])
    @likes = Like.where(post_id: params[:post_id])
    @post.reload
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, post_id: params[:post_id])
    like.destroy
    @likes = Like.where(post_id: params[:post_id])
    @post.reload
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

end
