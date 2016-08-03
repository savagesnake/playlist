class User < ActiveRecord::Base
  has_many :playlists,:through => :playlists_users
end
