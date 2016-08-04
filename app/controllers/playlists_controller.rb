class PlaylistsController < ApplicationController
  layout false
  def index
    @playlists = Playlist.all
  
  end

  def show
    @playlist = Playlist.find(params[:id])

  end
def  new
  @playlist = Playlist.new()
end
  def create
    @playlist = Playlist.new(params[:playlist])
    if @playlist.save
      flash[:notice] = "Playlist Created Successfully "
      redirect(:action=>"index")
    else
      @errors = @playlist.errors.full_messages
      render("new")
    end
  end
  def edit
    @playlist = find_playlist
  end

  def update
    @playlist = find_playlist
  end

  def delete
  end
  private
  def find_playlist
      Playlist.find(params[:id])
  end
  def playlist_params
      # params.require(:playlist).permit(:name.:rating,:image_link)
  end
end
