class HomeController < ApplicationController

	def index
  	@title = 'Ruby on Rails for beginners 2017'
		@subtitle = 'Web shop demo application'
		@products = Product.all		
	end
end