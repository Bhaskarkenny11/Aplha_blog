class UsersController < ApplicationController

    def new
       @user=User.new
    end

    def create
     #binding.pry
     @user=User.new(user_params)
     #binding.pry
        if @user.save 
           # binding.pry
            flash[:notice]= "#{@user.username} Successfully created"
            redirect_to articles_path
        else
            render 'new'
        end
    end

    private
    def user_params
        params.require(:user).permit(:username,:email,:password)
    end

end