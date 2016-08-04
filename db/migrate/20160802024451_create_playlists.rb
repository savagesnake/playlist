class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.references :user
      t.string :name
      t.string :image_link

      t.timestamps null:false
      end
      add_index :playlists,[:name,:user_id],unique:true
  end
end
