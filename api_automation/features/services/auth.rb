class Auth 

    def initialize(base_uri)
        @base_uri = base_uri
    end

    def auth (city, apiKey)
    HTTParty.get("#{@base_uri}/weather?q=#{city}&appid=#{apiKey}") 
    end

end