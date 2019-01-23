class TopCocktail::Cocktail
attr_accessor  :name, :ingredients, :directions
    @@all = []

    def self.all
        @@all
    end

    def initialize
        @@all << self
    end
 end
     