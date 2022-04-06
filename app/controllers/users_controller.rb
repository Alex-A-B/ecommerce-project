class UsersController < ApplicationController

    skip_before_action :authorize, only: :create

    def show
        user = User.find_by(id: session[:user_id])
        render json: user
    end

    def create
      user = User.create(user_params)
      if user.valid?
        session[:user_id] = user.id
        render json: user, status: :created
      else
        render json: {errors: user.errors.full_messages }, status: :unprocessable_entity
      end
    end

    private

    def user_params
      params.permit(:username, :password)
    end

end
