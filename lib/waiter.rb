class Waiter
 
  attr_accessor :name, :yrs_experience
 
  @@all = []
 
  def initialize(name, yrs_experience)
    @name = name
    @yrs_experience = yrs_experience
    @@all << self
  end
 
 def new_meal(customer, total, tip)
   Meal.new(self, customer, total, tip)
 end
 
 def meals
    Meal.all.select {|meal| meal.waiter == self}
 end
 
 def best_tipper
   all_my_meals = Meal.all.select {|meal| meal.waiter == self}
   all_my_meals.each do |my_meal| 
     my_meal.tip
  end.max
 end
 
  def self.all
    @@all
  end
 
 
end