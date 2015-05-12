class Stylist < ActiveRecord::Base
	has_many :shoppers
	has_many :boxes
	has_many :styles, through: :stylist_expertise
	has_many :box_types, through: :boxes
end
