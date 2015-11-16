class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.belongs_to :category, index: true
      t.integer :price
      t.string :description
      t.attachment :img

      t.timestamps
    end
  end
end
