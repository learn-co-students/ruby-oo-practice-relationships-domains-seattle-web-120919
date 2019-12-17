require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

b1 = Bakery.new("Ranch 99")

i1 = Ingredient.new("Sugar Frosting", 1000)
i2 = Ingredient.new("Rainbow Sprinkles", 600)
i3 = Ingredient.new("Sugar", 800)
i4 = Ingredient.new("Chocolate", 9000)

d1 = Dessert.new("Brownie", b1)
d1.add_ingredient(i1)
d1.add_ingredient(i2)
d2 = Dessert.new("Choco Cookie", b1)
d2.add_ingredient(i4)
d2.add_ingredient(i3)

Pry.start
