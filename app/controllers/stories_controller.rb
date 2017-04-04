class StoriesController < ApplicationController


  def new

  end

  def create

    @story = Story.new(story_params)

    @story.save
      respond_to do |format|
      msg = {status: 'CREATED NEW STORY!', data: @story.id}
      format.json {render :json => msg}
      puts msg
      puts @story.id

    end

    create_records

  end

  def destroy
    story = Story.find(params[:id])
  end

  def index
    stories = Story.all
      render json: {status: 'SUCCESS', message: 'Loaded all stories', data: stories}, status: :ok
  end

  def show
    story = Story.find(params[:id])
      render json: {status: 'SUCCESS', message: 'Loaded story', data: story}, status: :ok
  end

  private

    def story_params
      params.require(:story).permit(:title, :tagline, :image, :firstpanel)
    end

    def create_records
      @panel1 = create_panel
      @panel2 = create_panel
      create_choice
    end

    def create_panel
      Panel.create(story_id: @story.id)
    end

    def create_choice
      Choice.create(panel_id: @panel1.id, path_to: @panel2.id, story_id: @story.id)
    end
end
