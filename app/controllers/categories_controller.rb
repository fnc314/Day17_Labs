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
		@category = Category.find(params[:id])
	end

	def update
		category = Category.find(params[:id])
		updated_info = params.require(:category).permit(:name)
		category.update_attributes(updated_info)
		redirect_to category
	end

	def destroy
		id = params.require(:id)
		category = Category.find(id)
		category.destroy
		redirect_to "/categories"
	end

end