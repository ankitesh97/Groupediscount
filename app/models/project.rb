class Project < ActiveRecord::Base
	belongs_to :builder
	has_many :Category
	has_one :Status
  
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>", large: "500x500>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
