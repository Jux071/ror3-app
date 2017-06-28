class HomeController < ApplicationController
	def index		
		@welcome_message = 'Welcome to Ruby on Rails'
		@broj = 4
		@title = 'Ruby on Rails for beginners 2017'
		@subtitle = 'Web shop demo application'
		@products = Product.all
	end

	def test	
		#puts params.inspect			
	end

	def products
		@products = Product.all
	end
end