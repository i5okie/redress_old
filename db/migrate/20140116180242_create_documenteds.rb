class CreateDocumenteds < ActiveRecord::Migration
  def change
    create_table :documenteds do |t|
      t.string :product_id
      t.string :document_id

      t.timestamps
    end
  end
end
