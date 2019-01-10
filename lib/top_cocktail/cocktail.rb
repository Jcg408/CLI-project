class TopCocktail::Cocktail
    attr_accessor  :name, :ingredients, :directions
    
    @@all = []

    def self.all
        @@all
    end

    def self.create_drinks(info)
        drinks = TopCocktail::Cocktail.new
        drinks.name = info.css("h2").children.text.split(/\d+.\S./)
        drinks.name.keep_if{|x|x!=""}

        drinks.ingredients = info.css("p ~p")[0..9].children.text.split("Instructions:")

        drinks.directions = info.css("ul").map(&:text) 
      
        @@all << drinks
    end
end
     