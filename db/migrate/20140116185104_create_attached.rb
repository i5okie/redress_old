class CreateAttached < ActiveRecord::Migration
  def change
    create_table :attacheds do |t|
      t.integer :product_id
      t.integer :attachment_id
    end
  end
end
