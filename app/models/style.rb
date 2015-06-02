class Style < ActiveRecord::Base
	has_many :users
	has_many :stylists, through: :stylist_expertise
end
