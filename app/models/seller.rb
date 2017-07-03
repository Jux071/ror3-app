class Seller < ApplicationRecord
	has_many :products, dependent: :destroy
	
	validates_presence_of :name, :rating
	validates :rating, numericality: true
	validates :rating, numericality: { greater_than: 0, less_than_or_equal_to: 10 }
end