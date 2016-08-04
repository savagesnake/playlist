class CreateFavoritePlaylists < ActiveRecord::Migration
  def change
    create_table :favorite_playlists do |t|
          t.references :user,:foreing_key=>true
          t.references :playlist,:foreing_key=>true
      t.timestamps null: false
    end
    add_index :favorite_playlists,[:user_id,:playlist_id]
  end
end
