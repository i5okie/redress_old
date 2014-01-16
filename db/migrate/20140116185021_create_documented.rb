class CreateDocumented < ActiveRecord::Migration
  def change
    create_table :documenteds do |t|
      t.integer :product_id
      t.integer :document_id
    end
  end
end
