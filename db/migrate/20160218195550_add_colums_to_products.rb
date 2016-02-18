class AddColumsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :new, :boolean
    add_column :products, :best, :boolean
  end
end
