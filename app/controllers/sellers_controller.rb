class SellersController < ApplicationController

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
		@seller = Seller.find(params[:id])
	end

	def update
		@seller = Seller.find(params[:id])
	
		if @seller.update(seller_params)
			redirect_to sellers_path
		else
			render :edit
		end
	end

	def show
		@seller = Seller.find(params[:id])		
	end

	def destroy
		@seller = Seller.find(params[:id])
		@seller.destroy
		flash[:notice] = 'Seller deleted succesfully'
		redirect_to sellers_path
	end

	private 
	def seller_params
		params.require(:seller).permit(:name, :rating);
	end



end