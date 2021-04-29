class GvlRestaurants::CLI
  def call
    puts "Welcome to Greenville!"
    puts "Which romantic location would you like to dine at? select 1-5"
    puts " "
      get_location
      get_user_location
    puts " "
    puts "Don't know which location you would like? Let us choose a random location for you! (y)"
      #random_location
    #restaurants_at(location)
      #restaurant + tip
    #restaurant_info(restaurant)
  end

  def get_location
    #scraped locations
    @locations = ["Downtown", "West Greenville", "Simpsonville", "Woodruff", "Travelers Rest"]
  end

  def get_user_location
    #lists locations
    @locations.each_with_index {|location,index|
      puts " - #{location} (#{index+1})"
    }
  end
end
