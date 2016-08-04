class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
        t.references :playlist,:foreing_key=>true
        t.integer :rating
      t.timestamps null: false
    end
    add_index :ratings, :playlist_id
  end
end
