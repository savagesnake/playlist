class Playlist < ActiveRecord::Base
  belongs_to :user
  has_many :favorite_playlists
  has_many :playlist_songs
end
