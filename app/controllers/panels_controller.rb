class PanelsController < ApplicationController

  def new

  end

  def update
    @story.save
      respond_to do |format|
      msg = {status: 'CREATED NEW PANEL!'}
      format.json {render :json => msg}
    end
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

  def private
    def story_params
      params.require(:panel).permit(:story_id, :image, :body_text, :panel_title, :index)
    end
end
