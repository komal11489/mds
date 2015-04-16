class Disease < ActiveRecord::Base
	validates :name, :cause, :symptom, :treatment, :presence=>true 

	has_many :drugs
end
