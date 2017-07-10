require 'pry'

class Review
	attr_accessor :customer, :restaurant, :content

	@@all = []


	def initialize(restaurant, content)
		@restaurant = restaurant
		@content = content
		@@all << self
		@customer =''
	end


	def self.all
		@@all 
	end

	def customer
		@customer
	end

	def restaurant
		@restaurant
	end

  
end
