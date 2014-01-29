class Category < ActiveRecord::Base
	has_many :associations
	has_many :products, through: :associations
end
