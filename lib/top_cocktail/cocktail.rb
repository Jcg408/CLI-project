class TopCocktail::Cocktail
attr_accessor  :name, :ingredients, :directions
    @@all = []

    def self.all
        @@all
    end

    def initialize(drink)
        drink.each do |key, value|
            self.send("#{key}=", value) #meta-programming - send method 
        end
        save       
    end

    def save
        @@all << self
        # binding.pry
    end
 end
     