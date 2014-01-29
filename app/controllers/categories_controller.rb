class CategoriesController < ApplicationController

	def index
		@categories = Category.all
	end

	def show
		id = params.require(:id)
		@category = Category.find(id)
		@products = @category.products
	end

	def new
		@category = Category.new
	end

	def create
		category = Category.create(name: params["category"]["name"])
		redirect_to category
	end

	def edit
		id = params.require(:id)
		@category = Category.find(id)
	end

	def destroy
		id = params.require(:id)
		category = Category.find(id)
		category.destroy
		redirect_to "/categories"
	end

end