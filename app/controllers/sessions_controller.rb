class SessionsController < ApplicationController
    skip_before_action :authorized_user

    def create
        user = User.find_by(username:params[:username])
        if user&.authenticate(params[:password])
            session[:user_id] = user.id
            render json: user, status: :ok
        else
            render json: {errors: "Invalid Username or Password"}
        end
    end

    def show
        user = User.find_by(name:params[:name])
        render json: user, status: :ok
    end

    def destroy
        session.delete :user_id
        head :no_content
    end

end
