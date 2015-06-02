class Box < ActiveRecord::Base
	belongs_to :stylist
	belongs_to :user
	belongs_to :box_type
end
