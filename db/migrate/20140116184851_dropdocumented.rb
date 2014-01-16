class Dropdocumented < ActiveRecord::Migration
  def change
  	drop_table :documenteds
  end
end
