class AddAttachmentImgToMasters < ActiveRecord::Migration
  def self.up
    change_table :masters do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :masters, :img
  end
end
