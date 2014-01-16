class CreatePattachments < ActiveRecord::Migration
  def change
    create_table :pattachments do |t|
      t.integer :product_id
      t.integer :attachment_id

      t.timestamps
    end
  end
end
