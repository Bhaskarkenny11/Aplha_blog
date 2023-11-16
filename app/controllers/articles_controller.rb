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
end
