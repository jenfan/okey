class AddImgToNews < ActiveRecord::Migration
  def self.up
    change_table :news do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :news, :img
  end
end
