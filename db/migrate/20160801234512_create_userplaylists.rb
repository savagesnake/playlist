class CreateUserplaylists < ActiveRecord::Migration
  def change
    create_table :userplaylists do |t|
      t.references :user
      t.references :comment
      t.string :name
      t.string :ratings
      t.string :image_link

      t.timestamps null:false
    end
    add_index(:userplaylists,[:user_id,:comment_id,:name],unique:true)
  end
end
