class TopCocktail::CLI
       
    def call 
       TopCocktail::Scraper.new.set_info
       start
    end

    def start
       cocktail_menu
       selection
       thanks       
    end

    def cocktail_menu  
        puts " ********************"
        puts "   "     
        puts "Top 10 Favorite Cocktails"
        puts "Choose a line number for further information."
        puts "  "
        @cocktails = TopCocktail::Cocktail.all
        @cocktails.select do |item|
            item.name.each.with_index(1) do |drink_name, index|
                puts "#{index}. #{drink_name}"  
                puts " "  
            end     
        end
    end
  
    def selection
        input = gets.chomp.to_i 

        @cocktails.each do |cocktail|
            if input > 0 && input <= cocktail.name.length                     
                puts " "
                puts "You chose the #{cocktail.name[input-1]}! - Here is the recipe -" 
                puts " "
                puts "#{cocktail.ingredients[input-1]} "
                puts " "
                puts "Directions: #{cocktail.directions[input-1]}"
            else
                puts "  "
                puts "!! Not a Valid Entry. Please Try Again."
                start
            end 
        end 
    end 
       
    def thanks
        puts "  "
        puts "*** Would you like to see another cocktail? (Y / N)"

        input = gets.strip.downcase
        if input == "yes" || input == "y"
            start
        else
             puts "*** Thanks for Visiting Top 10 Favorite Cocktails ***"
        end
    end
end
