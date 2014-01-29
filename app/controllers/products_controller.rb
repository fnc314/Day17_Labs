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
		if params["product"]["name"] == "" || params["product"]["price"] == ""
			flash.now[:warning] = "Please Fill Out Entire Form"
			redirect_to new_product_path
		else
			product = Product.create(name: params["product"]["name"], price: params["product"]["price"])
			params["product"]["category_ids"].each { |x| product.categories.push(Category.find(x)) if x != "" }
			redirect_to product
		end
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		product = Product.find(params[:id])
		updated_info = params.require(:product).permit(:name, :price)
		if params["product"]["name"] == "" || params["product"]["price"] == ""
			flash[:warning] = "Name/Price CANNOT be empty!"
			redirect_to edit_product_path
		else
			product.update_attributes(updated_info)
			product.category_ids = params["product"]["category_ids"]
			redirect_to product
		end
	end

	def destroy
		product = Product.find(params[:id])
		product.destroy
		redirect_to products_path
	end

end