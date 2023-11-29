class ArticlesController < ApplicationController
    def about 
    end
    def show
        #binding.pry
        @article=Article.find(params[:id])
    end

    def index
        @articles=Article.all
        
    end

    def new 
      
    end

    def create 
  
   @article= Article.new(params.require(:article).permit(:title,:description))
     @article.save
     redirect_to @article
    
    end

def article_params
    params.require(:article).permit(:title, :description)
  end




end
