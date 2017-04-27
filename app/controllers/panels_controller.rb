class PanelsController < ApplicationController

  def new

  end

  def update
    @panel = Panel.find(panel_params[:id])
    @panel.update(panel_params)
  end

  def create

  end


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

  def destroy
    @panel = Panel.find(panel_params[:id])
    @choice = Choice.where(path_to: panel_params[:id])[0]
    @choice.destroy
    @panel.destroy


  end

  def chartshow
    @panel = Panel.where(story_id: params[:story_id]).where(index: params[:index])
    render json: {status: 'SUCCESS', message: 'Loaded panel', data: @panel}, status: :ok
  end

  private

    def panel_params

    params.require(:panel).permit(:id, :image, :body_text, :panel_title, :story_id, :index)


  end
end
