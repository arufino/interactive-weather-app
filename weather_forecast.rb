require "yahoo_weatherman"


def your_location(location)

  puts "Please insert your zip code:"
  @location = gets.chomp
end


def weather_forecast(location)
  
  client = Weatherman::Client.new
  weather = client.lookup_by_location(location)
  forecast = weather.forecasts

  forecast.each do |x|
    puts "The weather forecast for " + x["day"].to_s + " is " + x["text"].to_s.downcase + ", with a low of " + x["low"].to_s + " and a high of " + x["high"].to_s + "."
  end
  
end

your_location(@location)
weather_forecast(@location)




















