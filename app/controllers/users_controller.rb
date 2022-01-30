class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save 
            flash[:notice] = "Welcome to Alpha Blog, #{@user.username}. Your signup was successful"
            redirect_to articles_path
        else
            # flash[:alert] = "Please try again"
            redirect_to signup_path
        end
    end

    private 
    def user_params
        params.require(:user).permit(:username, :email, :password)
    end


end