class StoriesController < ApplicationController


  def new

  end

  def create

    @story = Story.new(story_params)

    @story.save
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
end
