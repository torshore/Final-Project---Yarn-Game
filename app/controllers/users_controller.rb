class UsersController < ApplicationController

  def index
    users = User.all
        render json: {status: 'SUCCESS', message: 'Loaded all users', users: users}, status: :ok
    end

  def show
    user = User.find(params[:id])
      render json: {status: 'SUCCESS', message: 'Loaded user', user: user}, status: :ok
  end
end
