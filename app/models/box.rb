class Box < ActiveRecord::Base
	belongs_to :stylist
	belongs_to :shopper
	belongs_to :box_type
end
