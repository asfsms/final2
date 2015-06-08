class Box < ActiveRecord::Base
	belongs_to :stylist
	belongs_to :user
	belongs_to :theme
end
