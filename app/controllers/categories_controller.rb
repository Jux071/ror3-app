class CategoriesController < ApplicationController
	
	before_action :find_category, { only: [:edit, :update, :show, :destroy] }
	before_action :find_product, { only: [:edit, :update, :show]}
	
	def index
		@categories = Category.all
	end

	def new
		@category = Category.new
	end

  def create
		@category = Category.new(product_params)

		if @category.save
			flash[:notice] = 'Category created succesfully :)'
			redirect_to categories_path
		else
			render :new
		end

	end

	def edit
		
	end

	def update
			
		if @category.update(product_params)
			render :show
		else
			render :edit
		end
	end

	def show
	  
	end

	def destroy

		@category.destroy
		flash[:notice] = 'Category deleted succesfully'
		redirect_to categories_path
	end

	private 
	def product_params
		params.require(:category).permit(:name, :description);
	end

def find_category
@category = Category.find(params[:id])
end

def find_product
	@products = @category.products
end



end