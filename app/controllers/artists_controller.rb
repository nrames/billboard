class ArtistsController < ApplicationController
  before_action :set_song, only: [:show]


  private
  def set_song  
    @song = Song.find(params[:song_id])
  end

  def artist_params
    params.require(:artist).permit(:name, :song_id)
  end  

end
