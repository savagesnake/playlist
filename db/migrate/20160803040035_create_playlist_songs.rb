class CreatePlaylistSongs < ActiveRecord::Migration
  def change
    create_table :playlist_songs do |t|
      t.references :song,:foreing_key=>true
      t.references :playlist,:foreing_key=>true

      t.timestamps null: false
    end
    add_index :playlist_songs,[:song_id,:playlist_id]
  end
end
