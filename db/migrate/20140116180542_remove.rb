class Remove < ActiveRecord::Migration
  def change
  	drop_table :pattachments
  end
end
