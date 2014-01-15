class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :model
      t.string :manufacturer
      t.string :link
      t.string :category

      t.timestamps
    end
  end
end
