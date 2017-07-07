class SellersController < ApplicationController

before_action :find_seller, { only: [:edit, :update, :show, :destroy] }
before_action :find_product, { only: [:edit, :update, :show]}

	def index
		@sellers = Seller.all
	end

  def new
		@seller = Seller.new
	end

	def create
		@seller = Seller.new(seller_params)

		if @seller.save
			flash[:notice] = 'Seller created succesfully :)'
			redirect_to sellers_path
		else
			render :new
		end

	end

	def edit
			
	end

	def update		
	
		if @seller.update(seller_params)
			redirect_to sellers_path
		else
			render :edit
		end
	end

	def show    
    
  end

	def destroy
	
		@seller.destroy
		flash[:notice] = 'Seller deleted succesfully'
		redirect_to sellers_path
	end

	private 
	def seller_params
		params.require(:seller).permit(:name, :rating);
	end
  
  def find_seller
		@seller = Seller.find(params[:id])
	end

  def find_product
  	@products = @seller.products
  end

end