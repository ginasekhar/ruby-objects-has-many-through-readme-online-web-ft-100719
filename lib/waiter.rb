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
   biggest_tip = 0
   biggest_tipper = NIL
   all_my_meals = Meal.all.select do |meal| 
      if meal.waiter == self && meal.tip >= biggest_tip
        biggest_tip = meal.tip
        biggest_tipper  = meal.customer
      end
   end
   biggest_tipper
 end
 
  def self.all
    @@all
  end
 
 
end