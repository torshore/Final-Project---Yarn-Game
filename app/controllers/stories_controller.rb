class StoriesController < ApplicationController


  def new

  end

  def create
    @story = Story.find(params[:id])
  end

  def destroy
    story = Story.find(params[:id])
  end

  def index
    stories = Story.all
      render json: {status: 'SUCCESS', message: 'Loaded all stories', stories: stories}, status: :ok
  end

  def show
    story = Story.find(params[:id])
      render json: {status: 'SUCCESS', message: 'Loaded story', story: story}, status: :ok
  end
end
