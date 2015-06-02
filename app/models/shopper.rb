class Shopper < ActiveRecord::Base
	belongs_to :stylist
	belongs_to :style
	has_many :boxes
	has_many :box_types, through: :boxes

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :phone_number, presence: true
	validates :city, presence: true
	validates :email, presence: true
	validates :password, presence: true
	has_secure_password
	
end
