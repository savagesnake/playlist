class PlaylistsUsers < ActiveRecord::Migration
  def change
    create_table :playlists_users do |t|
      t.references :user
      t.references :playlist

      t.timestamps null:false
    end
    add_index :playlists_users,[:user_id,:playlist_id]
  end
end
