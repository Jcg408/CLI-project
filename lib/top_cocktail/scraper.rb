 class TopCocktail::Scraper
       attr_accessor  :list, :desc, :recipe
       
        require 'nokogiri'
        require 'open-uri'
      #Although I have the requires in the appropriate files. It is easier for me to use the scraper.rb file independently
      #to output the results of the scraping before I set them to variables. So, I comment out the class information and 
      #run the methods independently to make sure they work. Then I will link them to the program.
      
        def self.get_data 
          #retrieve the info from the page and strip it down for the exact information. Had quite a time splitting and figuring
          #out the correct regex but kept getting an empty element in the array - ergo the list.keep  

            doc = Nokogiri::HTML(open("https://www.esquire.com/food-drink/drinks/g215/popular-bar-drinks-0609/"))
            

             @list= doc.css("span.listicle-slide-hed-text").text.split(/\d+\W/)
             @list.keep_if {|x|x!="" || nil}

              @description = []
              @recipe = []
              @directions = []

              doc.css(".listicle-slide-dek").collect do |describe|
                 @description << describe.css("p")[0].text.split(".,") 
                 @description.flatten!                 
              end
              # print @description

              doc.css(".listicle-slide-dek").collect do |ingredient|
                 ingredients = ingredient.css("p")[2..7].text.split(/(Directions)/)
                  @recipe << ingredients[0]                 
              end
              # print @recipe
            

              doc.css(".listicle-slide-dek").collect do |direction|
                      @directions<< direction.css("p")[2-4].text.split(" ,")
                      @directions.flatten!
              end
              #  print @directions
           end

              
        def self.menu
          self.get_data
          @list
        end

        def self.describe
            self.get_data
            @description             
        end  

        
        def self.directions
          self.get_data
          @directions
        end

        def self.ingredients
            self.get_data
            @recipe
        end
      end
                      
