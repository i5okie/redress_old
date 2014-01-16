class CreateAttacheds < ActiveRecord::Migration
  def change
    create_table :attacheds do |t|
      t.string :product_id
      t.string :attachment_id

      t.timestamps
    end
  end
end
