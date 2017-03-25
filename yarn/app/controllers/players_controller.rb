class PlayersController < ApplicationController
  def index
    players = Player.all
        render json: {status: 'SUCCESS', message: 'Loaded all players', data: players}, status: :ok
  end
    def show
      player = Player.find(params[:id])
        render json: {status: 'SUCCESS', message: 'Loaded player', data: player}, status: :ok
  end
end
