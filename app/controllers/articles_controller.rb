class ArticlesController < ApplicationController
    def about 
    end
    def show
        #binding.pry
        @articles=Article.find(params[:id])
    end

    def index
        @articles=Article.all
        
    end

    def new 

    end

    def create 
  
   @article= Article.new(params.require(:article).permit(:title,:description))
    render plain: @article.inspect
end





end
