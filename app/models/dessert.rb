class Dessert
    attr_accessor :ingredient, :bakery, :name, :ingredientlist

    @@all = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @ingredientlist = []
        save
    end

    def self.all
        @@all
    end

    def save
        @@all.push(self)
    end

    def add_ingredient(addingred)
        self.ingredientlist.push(addingred)
    end

    def ingredients
        @ingredientlist.map do |ingredient|
            ingredient.name
        end
    end

    def calories
        @ingredientlist.reduce(0) do |total, ingredient|
            total += ingredient.calories
        end
    end

end