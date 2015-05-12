class Shopper < ActiveRecord::Base
	belongs_to :stylist
	belongs_to :style
	has_many :boxes
	has_many :box_types, through: :boxes
end
