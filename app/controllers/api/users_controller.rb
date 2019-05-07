class Api::UsersController < ApplicationController

    def create
        @user = User.new(user_params)

        if @user.save
            login(@user)
            render "api/users/show"
        else
            # debugger
            render :errors, status: 422
            # render json: @user.errors.full_messages, status: 422
        end
    end
    
    def show
        @user = User.with_attached_photo.find(params[:id])
        render :show
    end

    def index
        @users = User.all
        render :index
    end

    private

    def user_params
        params.require(:user).permit(:email,:password,:fname,:lname,:photo)
    end
end
