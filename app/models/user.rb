class User < ActiveRecord::Base
  has_many :userplaylists
end
