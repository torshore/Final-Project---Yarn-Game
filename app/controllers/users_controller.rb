class UsersController < ApplicationController

  def index
    users = User.all
        render json: {status: 'SUCCESS', message: 'Loaded all users', data: users}, status: :ok
    end

  def show
    user = User.find(params[:id])
      render json: {status: 'SUCCESS', message: 'Loaded user', data: user}, status: :ok
  end
end
