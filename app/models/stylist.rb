class Stylist < ActiveRecord::Base
	has_many :users
	has_many :boxes
	#has_many :styles, through: :stylist_expertise
	has_many :themes, through: :boxes

	validates :first_name, presence: true
	validates :last_name, presence: true
	# validates :email, presence: true
	# validates :password, presence: true
	# has_secure_password
end
