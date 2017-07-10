class Customer
  attr_accessor :first_name, :last_name, :restaurant, :reviews

  @@all = []

  	def initialize(first_name, last_name)
   		@first_name = first_name
    	@last_name  = last_name
    	@reviews = []
    	@@all << self
  	end

  	def full_name
    	"#{@first_name} #{@last_name}"
  	end

	def self.all 
	  	@@all 
	end

  	def self.find_by_name(full_name)
  		# given a string of a full name, returns the first customer whose full name matches
  		# might need to split full name into first name and last name
  		self.all.find {|customer| customer.full_name == full_name}
  	end

  	def self.find_all_by_first_name(name) 
	# given a string of a first name,returns an array containing all customers with that first name
		@@all.select {|customer| customer.first_name == name}
	end


	def self.all_names
	#return an array of all full names
		@@all.map do |customer|
			customer.full_name
		end
	end


	def add_review(restaurant, content) 
		# given some content and a restaurant, creates a new review and associates it with that
		# customer and that restaurant
		review = Review.new(restaurant, content)
		restaurant.reviews << review
		self.reviews << review
		review.customer = self
	end

end