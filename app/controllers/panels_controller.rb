class PanelsController < ApplicationController

  def new

  end

  def update
    @panel = Panel.update(panel_params)


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

  private

    def panel_params

    params.require(:panel).permit(:image, :body_text, :panel_title)


  end
end
