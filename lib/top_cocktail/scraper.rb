class TopCocktail::Scraper
    
    def scrape_page          
        doc = Nokogiri::HTML(open("http://www.themost10.com/10-most-popular-cocktail-drinks/"))
    end
           
    def scrape_cocktails    
        self.scrape_page.css(".cb-entry-content")      
    end   

    def set_info
        scrape_cocktails.collect do |info|
            drink = {
            name: info.css("h2").text.split(/\d+.\S./).drop(1),             
            ingredients: info.css("p ~p").children.text.split("Instructions:"),
            directions: info.css("ul").map(&:text)
            }
            TopCocktail::Cocktail.new(drink)
            #    binding.pry
        end
    end  
end
    