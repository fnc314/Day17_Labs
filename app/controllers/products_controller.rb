class ProductsController < ApplicationController

	def index
		@products = Product.all
	end
	
	def show
		id = params.require(:id)
		@product = Product.find(id)
		@categories = @product.categories
	end

	def new
		@product = Product.new
	end

	def create
		product = Product.create(name: params["product"]["name"], price: params["product"]["price"])
		params["product"]["category_ids"].each { |x| Association.create(product_id: product.id, category_id: x) if x != "" }
		redirect_to product
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		product = Product.find(params[:id])
		updated_info = params.require(:product).permit(:name, :price)
		product.update_attributes(updated_info)
		redirect_to product
	end

	def destroy
		product = Product.find(params[:id])
		product.destroy
		redirect_to products_path
	end

end