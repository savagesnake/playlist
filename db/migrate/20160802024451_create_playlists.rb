class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.string :name
      t.string :rating
      t.string :image_link

      t.timestamps null:false
      end
      add_index:playlists,:name,unique:true
  end
end
