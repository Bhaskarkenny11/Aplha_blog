class ArticlesController < ApplicationController
    def about 
    end
    def show
        binding.pry
        @article=Article.find(params[:id])
    end
end
