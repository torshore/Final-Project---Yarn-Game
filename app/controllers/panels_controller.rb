class PanelsController < ApplicationController

  def new

  end

  def create
    story = Story.find(params[:story_id])
    @panel = story.panels.find(params[:id])
  end

  def destroy
    story = Story.find(params[:story_id])
    @panel = story.panels.find(params[:id])  end

  def index
    story = Story.find(params[:story_id])
    @panels = story.panels
        render json: {status: 'SUCCESS', message: 'Loaded all panels', data: @panels}, status: :ok
  end

  def show
    story = Story.find(params[:story_id])
    @panel = story.panels.find(params[:id])
      render json: {status: 'SUCCESS', message: 'Loaded panel', data: @panel}, status: :ok
  end


end
