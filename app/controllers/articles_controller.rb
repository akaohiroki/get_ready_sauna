class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_article, only: [:show, :edit, :update]
  before_action :contributor_confirmation, only: [:edit, :update]

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
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to article_path
    else
      render :edit
    end
  end

  private

  def article_params
    params.require(:article).permit(:image, :name, :prefecture_id, :bath_type_id, :temperature_id, :breadth_id, :water_bath_id, :break_space_id,
                                    :budget_id, :number_of_visit_id, :evaluation_id, :general_comment).merge(user_id: current_user.id)
  end

  def set_article
    @article = Article.find(params[:id])
  end

  def contributor_confirmation
    redirect_to action: :index unless current_user == @article.user
  end
end