class Style < ActiveRecord::Base
	has_many :shoppers
	has_many :stylists, through: :stylist_expertise
end
