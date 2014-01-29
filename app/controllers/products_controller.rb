class ProductsController < ApplicationController

	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def create

	end

	def show
		id = params.require(:id)
		@product = Product.find(id)
		@categories = @product.categories
	end

	def edit

	end

	def destroy

	end

end