
class HomePage 
    
    SEARCH_BUTTON = { xpath: '//*[@action="https://www.phptravels.net/hotels/search"]//button[contains(text(),"Search")]'     }
	#LOCATION1 = { xpath: '//*[@id="select2-drop"]/div/input' }

    attr_reader :browser
#s2id_autogen10 > a > span.select2-chosen
    def initialize(browser)
        @browser = browser
    end

    def click_search 
        browser.find_element(SEARCH_BUTTON).click
    end 

   # def fill_city(city)
	#	location = browser.find_element(LOCATION1)
		#location.click
		#location.send_keys(city)
		
	#end
	
	

    def loaded?
        browser.title.include?('PHPTRAVELS')
    end
     

  end