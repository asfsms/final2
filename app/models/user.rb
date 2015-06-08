class User < ActiveRecord::Base
	belongs_to :stylist
	belongs_to :style
	has_many :boxes
	has_many :themes, through: :boxes

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :city, presence: true
	validates :email, presence: true
	validates :password_digest, presence: true
	has_secure_password
	
end
