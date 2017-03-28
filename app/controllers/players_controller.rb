class PlayersController < ApplicationController

  def new

  end

  def create
      story = Story.find(params[:story_id])
      @player = story.players.find(params[:id])
  end

  def destroy
      story = Story.find(params[:story_id])
      @player = story.players.find(params[:id])
  end

  def index
    story = Story.find(params[:story_id])
    @players = story.players
        render json: {status: 'SUCCESS', message: 'Loaded all players', data: @players}, status: :ok
  end
    def show
      story = Story.find(params[:story_id])
      @player = story.players.find(params[:id])
        render json: {status: 'SUCCESS', message: 'Loaded player', data: @player}, status: :ok
  end
end
