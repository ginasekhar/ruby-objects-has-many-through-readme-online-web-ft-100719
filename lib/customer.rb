
require 'pry'
class Customer

  attr_accessor :name, :age
 
  @@all = []
 
  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end
 
  def self.all
    @@all
  end
 
 def new_meal(waiter, total, tip)
   Meal.new(waiter, self, total, tip)
 end
 
 def meals
    Meal.all.select {|meal| meal.customer == self}
 end
 
  def waiters
  all_my_meals = Meal.all.select {|meal| meal.customer == self}
  all_my_waiters = []
  all_my_meals.each do |my_meal|
    all_my_waiters << my_meal.waiter
  end
  all_my_waiters
end
# def waiters
#   all_my_meals = Meal.all.select {|meal| meal.customer == self}
#   all_my_waiters = []
#   all_my_meals.each do |my_meal|
#     all_my_waiters << my_meal.waiter
#   end
#   all_my_waiters
# end

end