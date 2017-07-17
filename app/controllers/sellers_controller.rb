class SellersController < ApplicationController

before_action :authorize, { only: [:new, :update, :destroy, :edit] }
before_action :find_seller, { only: [:edit, :update, :show, :destroy] }

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
			redirect_to @seller
		else
			render :edit
		end
	end

	def show    
    @products = @seller.products
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

 end