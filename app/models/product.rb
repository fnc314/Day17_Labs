class Product < ActiveRecord::Base
	has_many :associations
	has_many :categories, through: :associations
end
