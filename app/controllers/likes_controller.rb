class LikesController < ApplicationController
  before_action :set_variables, only: [:create, :destroy]

  def create
    @like = current_user.likes.create(article_id: params[:article_id])
  end

  def destroy
    like = current_user.likes.find_by(article_id: params[:article_id])
    like.destroy
  end

  private 

  def set_variables
    @article = Article.find(params[:article_id])
    @id_name = "#like-link-#{@article.id}"
  end
end