class AddDescriptionToMaster < ActiveRecord::Migration
  def change
    add_column :masters, :description, :string
  end
end
