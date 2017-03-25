class PanelsController < ApplicationController
  def index
    panels = Panel.all
        render json: {status: 'SUCCESS', message: 'Loaded all panels', data: panels}, status: :ok
  end

  def show
    panel = Panel.find(params[:id])
      render json: {status: 'SUCCESS', message: 'Loaded panel', data: panel}, status: :ok
  end
end
