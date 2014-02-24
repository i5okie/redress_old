class CreateProdvideos < ActiveRecord::Migration
  def change
    create_table :prodvideos do |t|
      t.integer :product_id
      t.integer :video_id

      t.timestamps
    end
  end
end
