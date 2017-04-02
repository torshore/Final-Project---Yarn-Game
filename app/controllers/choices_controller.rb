class ChoicesController < ApplicationController

  def new

  end

  def listrow
    @rows = Choice.select(:id, :path_to, :panel_id).distinct.where story_id: Story.find(params[:story_id])

    render json: {status: 'SUCCESS', message: 'Loaded all rows', data: @rows}, status: :ok
  end

  def create
    panel = Panel.find(params[:panel_id])
    @choice = panel.choices.find(params[:id])
  end

  def destroy
    panel = Panel.find(params[:panel_id])
    @choice = panel.choices.find(params[:id])
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
