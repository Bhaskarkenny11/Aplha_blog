class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def home
  end

  def show
  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new (article_params)
    if @article.save
      flash[:notice] = "Article created Successfully."
      redirect_to @article
    else
      # puts @article.errors.inspect
      render "new", status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      flash[:notice] = "Article updated successfully"
      redirect_to @article
    else
      render "edit"
    end
  end

  def destroy
    if @article.destroy
      flash[:notice] = "Article deleted successfully"
      redirect_to articles_path
    else
      render "destroy"
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :description)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
