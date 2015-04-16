class Drug < ActiveRecord::Base
	searchkick
	belongs_to :disease
	has_many :reviews
	validates :name, :uses, :sideeffects, :precautions, :interactions, :overdose, :presence=>true 
	has_attached_file :image, styles: { large: "600x600#", medium: "300x300#", thumb: "100x100#"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	
end
