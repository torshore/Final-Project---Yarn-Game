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

    @story.update(firstpanel: @panel1.id)

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
      params.require(:story).permit(:title, :tagline, :image, :firstpanel, :id)
    end

    def create_records
      @panel1 = create_panel
      @panel2 = create_panel2
      create_choice
    end

    def create_panel
      Panel.create(story_id: @story.id, image: @story.image, body_text: @story.title, panel_title: @story.title, index: 1, image_height: "600px", image_width: "350px", body_text_height: "350px", body_text_width: "260px", body_text_position_x: 540, body_text_position_y: -580)
    end

    def create_panel2
      Panel.create(story_id: @story.id, index: 2, image_height: "600px", image_width: "350px", body_text_height: "350px", body_text_width: "260px", body_text_position_x: 540, body_text_position_y: -580)
    end

    def create_choice
      Choice.create(panel_id: @panel1.id, path_to: @panel2.id, story_id: @story.id, panel_title: @story.title, body_text: "Start this Story!", index: 1, index2: 2, image: @story.image, panel_text: @story.title)
    end
end
