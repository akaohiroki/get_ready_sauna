class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @articles = Article.order("created_at DESC").includes(:user)
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  private

  def article_params
    params.require(:article).permit(:image, :name, :prefecture_id, :bath_type_id, :temperature_id, :breadth_id, :water_bath_id, :break_space_id,
                                    :budget_id, :number_of_visit_id, :evaluation_id, :general_comment).merge(user_id: current_user.id)
  end
end