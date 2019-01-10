class TopCocktail::CLI
    attr_accessor :name, :menu
    
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
        puts " *********************"
        puts "   "     
        puts "Top Favorite Cocktails"
        puts "Choose a line number for further information."
        puts "  "
        @drinks = TopCocktail::Cocktail.all
        @menu = []
        @drinks.collect do |item|
            item.name.each.with_index(1) do |drink, index|
                @menu << drink  
                puts "#{index}. #{drink}"
            end
        end  
    end
  
    def selection
        input = gets.chomp.to_i  

        selection = @menu[input.to_i-1]
        @drinks.each do |item|
            if input >0 && input <=10
                item.ingredients.each.with_index(1) do |recipe, index|
                    if input == index
                        puts " "
                        puts "You chose the #{selection}! - Here is the recipe -" 
                        puts " "
                        puts "#{recipe}"
                    end #input
                end  #ingredients

                item.directions.each.with_index(1) do |instructions, index|  
                    if input == index
                        puts " "
                       puts "Directions: #{instructions}"
                    end #input
                end #directions
            else
                puts "  "
                puts "!! Not a Valid Entry. Please Try Again."
                start
            end #input
        end #drinks
    end 
       
    def thanks
        puts "  "
        puts "*** Would you like to see another cocktail? (Y / N)"

        input = gets.strip.downcase
        if input == "yes" || input == "y"
         start
        else
             puts "*** Thanks for Visiting Top Favorite Cocktails ***"
        end
    end
end
