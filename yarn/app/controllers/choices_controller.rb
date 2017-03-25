class ChoicesController < ApplicationController
  def index
    choices = Choice.all
      render json: {status: 'SUCCESS', message: 'Loaded all choices', data: choices}, status: :ok
  end

  def show
    choice = Choice.find(params[:id])
      render json: {status: 'SUCCESS', message: 'Loaded choice', data: choice}, status: :ok
  end
end
