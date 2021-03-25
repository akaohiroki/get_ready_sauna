class LikesController < ApplicationController
  before_action :set_variables, only: [:create, :destroy]
  before_action :authenticate_user!

  def create
    Like.create(user_id: current_user.id, article_id: params[:id])
  end

  def destroy
    Like.find_by(user_id: current_user.id, article_id: params[:id]).destroy
  end

  private 

  def set_variables
    @article = Article.find(params[:id])
  end
end