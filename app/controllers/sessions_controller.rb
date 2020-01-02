class SessionsController < ApplicationController
    def create
        @user = User.find_by_credentials(params[:user][:name],params[:user][:password])
        if @user
            signin(@user)
            render 'investments/show'
        else
            render json: ['invalid credentials'], status: :unprocessable_entity
        end
    end
    def destroy
        @user = current_user
        if @user
            signout
            output = {}
            render 'users/show'
        else
            render json:["Nobody signed in"], status: 404
        end
    end
end