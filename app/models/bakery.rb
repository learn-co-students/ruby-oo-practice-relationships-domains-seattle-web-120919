class Bakery
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def save
        @@all.push(self)
    end

    def desserts
        Dessert.all.find_all do |desserts|
            desserts.bakery == self
        end
    end

    def ingredients
        ingredarr = []
        desserts.each do |desserts_ing|
            ingredarr.push(desserts_ing.ingredientlist)
        end
        ingredarr.flatten
    end

    def average_calories
        ingredients.reduce(0) do |total, ingred|
            total += ingred.calories
        end / desserts.length
    end

    def shopping_list
        ingredients.map do |ingred|
            ingred.name
        end
    end
end
