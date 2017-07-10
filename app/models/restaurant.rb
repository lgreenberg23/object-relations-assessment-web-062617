class Restaurant
  attr_accessor :name, :customers, :reviews

  @@all = []

  def initialize(name)
    @name = name
    @reviews = []
    @@all << self
  end

  def self.all 
  	@@all 
  end

  def self.find_by_name(name)
  	self.all.find {|restaurant| restaurant.name == name }
  end

  def reviews
  	@reviews
  end

  def customers
  	self.reviews.collect {|review| review.customer}
  end


end


# Restaurant.all
# # returns an array of all restaurants
# Restaurant.find_by_name(name)
# # given a string of restaurant name, returns the first restaurant that matches
# Restaurant.reviews
# # returns an array of all reviews for that restaurant
# Restaurant.customers
# # should return all of the customers who have written reviews of that restaurant.

=begin
 pizza = Restaurant.new("Rays")
 rachel = Customer.new('Rachel', 'G')
 rachel.add_review(pizza, "ok")
 elana = Customer.new('Elana', 'G')
 thai = Restaurant.new("born")
 rachel.add_review(thai, "great")
 elana.add_review(pizza, "mediocre")
# elana.add_review(thai, "so good")
=end