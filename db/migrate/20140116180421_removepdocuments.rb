class Removepdocuments < ActiveRecord::Migration
  def change
  	drop_table :pdocuments
  end
end
