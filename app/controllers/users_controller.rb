class UsersController < ApplicationController
    skip_before_action :authorized_user

    def index
        users = User.all
        render json: users, status: :ok
    end

    def show
        user = User.find_by(id: session[:user_id])
        render json: current_user, status: :ok
    end

    def create
        user = User.create!(user_params)
        render json: user, status: :created
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        head :no_content
    end

    private

    def user_params
        params.permit(:name, :username, :email, :password)
    end

end
