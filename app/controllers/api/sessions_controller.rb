class Api::SessionsController < ApplicationController
    
    def create
        @user = User.find_by_credentials(
            params[:user][:email],
            params[:user][:password]
        )
        if @user
            login(@user)
            render "api/users/show"
        else
            render json: ["Invalid email/password"]
        end
    end

    def destroy
        @user = current_user
        # debugger
        if @user
            logout  
            render "api/users/show"
        else
            render json: ["Not signed in"], status: 404
        end
    end
    
end
