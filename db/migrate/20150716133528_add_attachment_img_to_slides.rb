class AddAttachmentImgToSlides < ActiveRecord::Migration
  def self.up
    change_table :slides do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :slides, :img
  end
end
