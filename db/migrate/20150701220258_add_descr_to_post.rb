class AddDescrToPost < ActiveRecord::Migration
  def change
    add_column :posts, :mini_description, :string
    add_column :posts, :full_description, :string
  end
end
