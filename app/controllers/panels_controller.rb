class PanelsController < ApplicationController

  def new

  end

  def update
    @panel = Panel.find(panel_params[:id])
    @panel.update(panel_params)
    @choice = Choice.where(path_to: @panel.id)
    @choice.update(panel_text: @panel.body_text)
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

    allchoices = Choice.where(story_id: panel_params[:story_id])
    allchoices.each do |choice|
      if choice.index2 > @choice.index2
        choice.decrement!(:index2)
      end
    end

    allpanels = Panel.where(story_id: panel_params[:story_id])
    allpanels.each do |panel|
      if panel[:index] > @panel[:index]
        panel.decrement!(:index)
      end
    end

    @choice.destroy
    @panel.destroy




  end

  def chartshow
    @panel = Panel.where(story_id: params[:story_id]).where(index: params[:index])
    render json: {status: 'SUCCESS', message: 'Loaded panel', data: @panel}, status: :ok
  end

  private

    def panel_params

    params.require(:panel).permit(:id, :image, :body_text, :panel_title, :story_id, :index, :image_width, :image_height, :image_position_x, :image_position_y, :body_text_height, :body_text_width, :body_text_position_x, :body_text_position_y, :body_text_background_color, :a_value)


  end
end
