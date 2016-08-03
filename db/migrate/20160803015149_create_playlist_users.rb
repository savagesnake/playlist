class CreatePlaylistUsers < ActiveRecord::Migration
  def change
    create_table :playlist_users do |t|
      t.references :user
      t.references :playlist

      t.timestamps null:false
    end
    add_index :playlist_users,[:user_id,:playlist_id]
  end
end
