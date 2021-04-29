require 'nokogiri'
require 'open-uri'

class GvlRestaurants::Scraper

  def get_page
    Nokogiri::HTML(open("https://www.10best.com/destinations/south-carolina/greenville/restaurants/romantic-dining/"))
  end

  def restaurant_location
    name = get_page.css(".dt-list-content").first.css(".dt-neigbhorhood").text
    print name
  end

  def restaurant_name
    name = get_page.css(".dt-list-content").first.css("h2").text
    puts name
  end
end
