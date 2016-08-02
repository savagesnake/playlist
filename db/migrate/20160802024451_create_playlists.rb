class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.references :user
      t.references :comment
      t.string :name
      t.string :ratings
      t.string :image_link

      t.timestamps null:false
      end
      add_index(:playlist,[:user_id,:comment_id,:name],unique:true)
  end
end
