class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :subcategory
	has_attached_file :img, :styles => { :large => "300x300>", medium:"200x200", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :img, :content_type => /\Aimage\/.*\Z/

  def self.news
    Product.where new: true
  end

  def self.top
    Product.where best: true
  end

end
