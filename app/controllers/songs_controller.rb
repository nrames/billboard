class SongsController < ApplicationController
  before_action :set_board
  before_action :set_song, only: [:show]
  
  def index
    @songs = @board.songs
  end

  def show
  end

  def new
    @song = @board.songs.new
  end

  private
  def song_params
    params.require(:song).permit(:name)
  end

  def set_board
    @board = Board.find(params[:board_id])
  end

  def set_song
    @song = Song.find(params[:id])
  end
end
