class ChoicesController < ApplicationController

  def new

  end

  def create

  end

  def index
    panel = Panel.find(params[:panel_id])
    @choices = panel.choices
      render json: {status: 'SUCCESS', message: 'Loaded all choices', data: @choices}, status: :ok
  end

  def show
    panel = Panel.find(params[:panel_id])
    @choice = panel.choices.find(params[:id])
      render json: {status: 'SUCCESS', message: 'Loaded choice', data: @choice}, status: :ok
  end
end
