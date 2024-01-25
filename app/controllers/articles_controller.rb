class ArticlesController < ApplicationController
  def about
  end

  def show
    #binding.pry
    @article = Article.find(params[:id])
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
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:notice] = "Article updated successfully"
      redirect_to @article
    else
      render "edit"
    end
  end

  def article_params
    params.require(:article).permit(:title, :description)
  end
end
