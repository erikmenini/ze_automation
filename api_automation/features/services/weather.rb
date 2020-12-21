class Weather 

    def initialize(base_uri, apiKey)
        @base_uri = base_uri
        @apiKey = apiKey
    end

    def get_weather (city, stateCode, countryCode)
        HTTParty.get("#{@base_uri}/weather?q=#{city},#{stateCode},#{countryCode}&appid=#{@apiKey}") 
    end

    def get_weather_witout_city ()
        HTTParty.get("#{@base_uri}/weather?q=&appid=#{@apiKey}") 
    end

    def get_weather_wrong_city (city)
        HTTParty.get("#{@base_uri}/weather?q=#{city}&appid=#{@apiKey}") 
    end

    def get_weather_cityId (cityID)
        HTTParty.get("#{@base_uri}/weather?id=#{cityID}&appid=#{@apiKey}") 
    end

    def get_weather_coordinates (lat, lon)
        HTTParty.get("#{@base_uri}/weather?lat=#{lat}&lon=#{lon}&appid=#{@apiKey}") 
    end

    def get_weather_zipCode (zipCode, countryCode)
        HTTParty.get("#{@base_uri}/weather?zip=#{zipCode},#{countryCode}&appid=#{@apiKey}") 
    end
    def get_weather_bbox (lon_left, lat_bottom, lon_right, lat_top, zoom)
        HTTParty.get("#{@base_uri}/box/city?bbox=#{lon_left},#{lat_bottom},#{lon_right},#{lat_top},#{zoom}&appid=#{@apiKey}") 
    end

    def get_weather_circle (lat, lon, totalCities)
        HTTParty.get("#{@base_uri}/find?lat=#{lat}&lon=#{lon}&cnt=#{totalCities}&appid=#{@apiKey}")
    end
   
    def get_weather_ids (cityId1, cityId2, cityId3)
        HTTParty.get("#{@base_uri}/group?id=#{cityId1},#{cityId2},#{cityId3}&appid=#{@apiKey}")
    end

end