class User < ActiveRecord::Base
	validates :fname, :lname, :email, :number, :presence => true
 	validates :email, :uniqueness => true
 	validates_format_of :email, :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
end
