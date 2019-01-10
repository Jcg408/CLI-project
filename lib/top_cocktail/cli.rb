class TopCocktail::CLI
     
    def call
        #method to call other methods
       cocktail_menu
       selection
       thanks       
    end

    def cocktail_menu       
        puts "Top Favorite Cocktails"
        puts "Choose a line number for further ingredients and recipe!"
        @menu = TopCocktail::Scraper.menu
        @menu.each.with_index(1) do |drink, i|
            puts "#{i}. #{drink}"
        end
    end

  ## need to have methods which retrieve information - description, ingredients and directions.
    def selection
        input = gets.chomp.to_i  

        @information = TopCocktail::Scraper.describe
        @recipes = TopCocktail::Scraper.ingredients
        @instructions = TopCocktail::Scraper.directions
       
        if input >0 && input <= @menu.length
            selection = @menu[input.to_i-1]            
            puts "You Chose the#{selection}! "
        else
            puts "That is not a valid choice. Try again."
            call
        end
    
        @information.each.with_index(1) do |desc, i|
            if input == i
                puts "Information: #{desc}"
            else
            nil
            end
        end

        @recipes.each.with_index(1) do |rec, i|
            if input == i
                puts "Ingredients: #{rec}"
            else
            nil
            end
        end

        @instructions.each.with_index(1) do |todo, i|
            if input == i
                puts "Directions: #{todo}"
            else
            nil
            end
        end
    end
        
    def thanks
        puts "*** Would you like to see another cocktail? (Y / N)"

        input = gets.strip.downcase

        if input == "yes" || input == "y"
            call
        else
             puts "*** Thanks for Visiting Top Favorite Cocktails ***"
        end
    end
end