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
        puts " *******************************"
        puts "   "     
        puts "Top 10 Favorite Cocktails"
      
        puts "  "
        puts "Choose a line number for further information."
        @cocktails = TopCocktail::Cocktail.all
        @cocktails.each.with_index(1) do |cocktail, index|
            puts "#{index}. #{cocktail.name}"  
                puts " "  
        end
    end
  
    def selection
        input = gets.chomp.to_i 
        if input > 0 && input <= @cocktails.size 
            cocktail =  @cocktails[input -1]
            puts " "
            puts "You chose number #{input} - The #{cocktail.name}. Here is the recipe!"
            puts " "
            puts "#{cocktail.ingredients}"
            puts " "
            puts "Directions: #{cocktail.directions}"
        else
            puts "  "
            puts "!! Not a Valid Entry. Please Try Again."
            start            
        end 
    end 
       
    def thanks
        puts "  "
        puts "*** Would you like to see another cocktail? (Y/N)"

        input = gets.strip.downcase
        if input == "yes" || input == "y"
            start
        else
             puts "*** Thanks for Visiting Top 10 Favorite Cocktails ***"
        end
    end
end
