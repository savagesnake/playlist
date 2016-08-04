class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :playlist,:foreing_key=>true
      t.timestamps null: false
    end
    add_index :comments,:playlist_id
  end
end
