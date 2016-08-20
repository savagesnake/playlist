class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.references :user
      t.string :name
      t.string :image_link

      t.timestamps null:false
      end
<<<<<<< HEAD
      add_index:playlists,:name,unique:true
=======
      add_index :playlists,[:name,:user_id],unique:true
>>>>>>> master
  end
end
