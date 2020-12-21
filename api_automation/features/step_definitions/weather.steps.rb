Given('I access the OpenWeather URL passing the {string}, {string}, {string}') do |cityName, stateCode, countryCode|
    @response_weather = @weather.get_weather(cityName, stateCode, countryCode) 
    end
  
    Given('I access the OpenWeather URL passing the city') do
      @response_weather = @weather.get_weather_witout_city() 
    end
  
    Given('I access the OpenWeather URL passing the city {string}') do |city|
      @response_weather = @weather.get_weather_wrong_city(city) 
    end
  
    Given('I access the OpenWeather URL passing the cityID {string}') do |cityID|
      @response_weather = @weather.get_weather_cityId(cityID) 
    end
  
    Given('I access the OpenWeather URL passing the lat {string} and lon {string}') do |lat, lon|
      @response_weather = @weather.get_weather_coordinates(lat, lon) 
    end
  
    Given('I access the OpenWeather URL passing the zipcode {string} and countrycode {string}') do |zipCode, countryCode|
      @response_weather = @weather.get_weather_zipCode(zipCode, countryCode) 
    end
  
    Given('I access the OpenWeather URL passing the lon left {string}, lat-bottom {string}, lon-right {string}, lat-top {string} and zoom {string}') do |lon_left, lat_bottom, lon_right, lat_top, zoom|
      @response_weather = @weather.get_weather_bbox(lon_left, lat_bottom, lon_right, lat_top, zoom) 
    end
  
  Given('I access the OpenWeather URL passing the lat {string}, lon {string} and {string} cities') do |lat, lon, totalCities|
    @response_weather = @weather.get_weather_circle(lat,lon, totalCities) 
  end
  
  Given('I access the OpenWeather URL passing three ids {string}, {string}, {string}') do |cityId1, cityId2, cityId3|
    @response_weather = @weather.get_weather_ids(cityId1, cityId2, cityId3) 
  end