class Admin::ProductsController < Admin::BaseController	

before_action :find_product, { only: [:edit, :update, :show, :destroy] }

	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)

		if @product.save
			flash[:notice] = 'Product created succesfully :)'
			redirect_to [:admin, @product]
		else
			render :new
		end

	end

	def edit
   
	end

	def update
			
		if @product.update(product_params)
			redirect_to [:admin, @product]
		else
			render :edit
		end
	end

	def show
			
	end

	def destroy

		@product.destroy
		flash[:notice] = 'Product deleted succesfully'
		redirect_to admin_products_path
	end

	private 
	def product_params
		params.require(:product).permit(:name, :price, :category_id, :description, :seller_id);
	end

	def find_product
		@product = Product.find(params[:id])
	end

end