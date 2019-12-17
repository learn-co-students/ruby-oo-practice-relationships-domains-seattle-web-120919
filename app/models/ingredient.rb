class Ingredient
    attr_reader :name, :calories

    @@all = []

    def initialize(name, calories)
        @name = name
        @calories = calories
        save
    end

    def self.all
        @@all
    end

    def save
        @@all.push(self)
    end

    def self.find_all_by_name(finding)
        @@all.find_all do |ingredients|
            ingredients.name.include?(finding)
        end
    end

    def dessert
        Dessert.all.find do |desserts|
        desserts.ingredientlist.include?(self)
        end 
    end

    def bakery
        dessert.bakery
    end
end