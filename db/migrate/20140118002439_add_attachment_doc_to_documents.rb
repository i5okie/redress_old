class AddAttachmentDocToDocuments < ActiveRecord::Migration
  def self.up
    change_table :documents do |t|
      t.attachment :doc
    end
  end

  def self.down
    drop_attached_file :documents, :doc
  end
end
