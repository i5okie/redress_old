class CreatePdocuments < ActiveRecord::Migration
  def change
    create_table :pdocuments do |t|
      t.integer :product_id
      t.integer :document_id

      t.timestamps
    end
  end
end
