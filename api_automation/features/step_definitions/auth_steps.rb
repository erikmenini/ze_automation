Given('I access the OpenWeather URL passing the {string} and the {string}') do |city, apiKey|
    @response_weather = @auth.auth(city, apiKey)
  end
  
