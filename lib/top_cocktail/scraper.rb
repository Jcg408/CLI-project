class TopCocktail::Scraper
    
    def scrape_page          
        doc = Nokogiri::HTML(open("http://www.themost10.com/10-most-popular-cocktail-drinks/"))
    end
           
    def scrape_cocktails      
        self.scrape_page.css(".cb-entry-content")        
    end   

    def set_info
        scrape_cocktails.collect do |info|   
            TopCocktail::Cocktail.create_drinks(info)
        end
    end     
      
end
      
