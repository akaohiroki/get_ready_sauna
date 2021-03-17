class CommentsController < ApplicationController

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new(comment_params)
    if @comment.save
      redirect_to article_path(@article)
    else
      @comments = @article.comments.order("created_at DESC").includes(:user)
      render "articles/show"
    end
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    if current_user == @comment.user
      @comment.destroy
      redirect_to article_path(@article)
    else
      render "articles/show"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, article_id: params[:article_id])
  end
end