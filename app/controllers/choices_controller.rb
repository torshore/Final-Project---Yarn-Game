class ChoicesController < ApplicationController

  def new

  end

  def create
    @choice = Choice.new(choice_params)

    @choice.save
      respond_to do |format|
      msg = {status: 'CREATED A NEW CHOICE AND A NEW PANEL!', data: @choice.id}
      format.json {render :json => msg}

    end

    create_records

    @choice.update(path_to: @panel.id)
  end

  def listrow
    @rows = Choice.select(:id, :path_to, :panel_id, :panel_title, :index, :index2, :story_id, :image, :panel_text, :body_text).distinct.where story_id: Story.find(params[:story_id])
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

  private
    def choice_params
      params.require(:choice).permit(:panel_id, :index, :index2, :body_text, :story_id)
    end

    def create_records
      @panel = Panel.create(story_id: @choice.story_id)
    end
end
