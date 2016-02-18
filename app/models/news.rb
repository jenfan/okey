class News < ActiveRecord::Base
  has_attached_file :img, :styles => { :large => "300x300>", medium:"200x200", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :img, :content_type => /\Aimage\/.*\Z/
end
