class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.text :description
      t.string :filetype
      t.string :filelocation

      t.timestamps
    end
  end
end
