class AddSubcategoryIdToProduct < ActiveRecord::Migration
  def change
    add_reference :products, :subcategory, index: true
  end
end
