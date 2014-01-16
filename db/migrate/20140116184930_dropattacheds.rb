class Dropattacheds < ActiveRecord::Migration
  def change
  	drop_table :attacheds
  end
end
