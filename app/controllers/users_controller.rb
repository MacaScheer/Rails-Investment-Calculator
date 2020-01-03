class UsersController < ApplicationController

    before_action :require_signed_in!, only: [:show, :update]
    before_action :require_no_user!, only: [:create, :new]
    def create
        @user = User.new(user_params)
        if @user.save
            signin(@user)
            render 'investments/new'
        else
            render json: @user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def new
        @user = User.new
        # render 'users/new'
    end

    def update
        @user = current_user

        if @user.update(user_params)
            render :show
        else
            render json: @user.errors.full_messages, status: 422
        end
    end

    def show
        @user = User.find(params[:id])
        render 'investments/show'
    end


    private
    def user_params
        params.require(:user).permit(:name, :password)
    end
end