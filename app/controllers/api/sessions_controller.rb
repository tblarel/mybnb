class Api::SessionsController < ApplicationController
    
    def create
        @user = User.find_by_credentials(
            params[:user][:email],
            params[:user][:password]
        )
        if @user
            puts("logging in #{@user}")
            login(@user)
            render "api/users/show"
        else
            @user = User.find_by(email: params[:user][:email])
            if @user
                puts("invalid pwd ")
                render json: ["Invalid password"],  status: 401
            else    
                render json: ["Invalid email and password"], status: 401
            end
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
