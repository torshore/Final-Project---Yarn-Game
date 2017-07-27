class WordsController < ApplicationController

  def index
    panel = Panel.find(params[:panel_id])
    @words = panel.words.order(index: :asc)
      render json: {status: 'SUCCESS', message: 'Loaded all words', data: @words}, status: :ok
  end

  def show
    word = Word.find(params[:id])
      render json: {status: 'SUCCESS', message: 'Loaded word', data: word}, status: :ok
  end

  def new

  end

  def destroy
    @word = Word.find(params[:id])
    allwords = Word.where(panel_id: params[:panel_id])
    allwords.each do |word|
      if word[:index] > @word[:index]
        word.decrement!(:index)
      end
    end
    @word.destroy
  end

  def create
    @word = Word.new(word_params)
    @lastword = Word.where(panel_id: @word.panel_id).maximum(:index)
    @word.update(index: @lastword + 1)
  end

  def update
    @word = Word.find(word_params[:id])
    @word.update!(word_params)
  end

    private

    def word_params

    params.require(:word).permit(:id, :content, :index, :panel_id)


  end

end
