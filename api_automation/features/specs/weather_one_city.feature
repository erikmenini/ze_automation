Feature: Know the wether for one city

As a user,
I want to know the weather for some city
Using the name, statecode, cordenates, Id and zipcode

@weatherOneCity @weatherCity
Scenario Outline: Know the weather with the city name
Given I access the OpenWeather URL passing the <city>, <statecode>, <countrycode>
Then the status code should be <code>
    Examples:
        | city        | statecode   | countrycode   | code |
        | "Fortaleza" | ""          | ""            | 200  | 
        | ""          | "200"       | ""            | 200  | 
        | "Fortaleza" | "200"       | ""            | 200  | 
        | "Fortaleza" | "200"       | "BR"          | 200  | 
        | "Fortaleza" | "200"       | "BR"          | 200  |   

@weatheWithourCity @weatherCity
Scenario: Search for a weather wihtout pass the city
Given I access the OpenWeather URL passing the city
Then the status code should be 400
And should have the message "Nothing to geocode"

@weatherWrongCity @weatherCity
Scenario: Search for a weather wihtout passing the city that doesn't exist
Given I access the OpenWeather URL passing the city 'teste'
Then the status code should be 404
And should have the message "city not found"

@weatherCityID  @weatherCity
Scenario: Search for a weather and validate the data
Given I access the OpenWeather URL passing the cityID '3469034'
Then the status code should be 200

@weatherWrongCityID @weatherCity
Scenario: Search for a weather with a wrong cityID
Given I access the OpenWeather URL passing the cityID 'teste'
Then the status code should be 400
And should have the message "teste is not a city ID"

@weatherCordinates  @weatherCity
Scenario: Search for a weather with longitude and latitude
Given I access the OpenWeather URL passing the lat "-49" and lon "-22"
Then the status code should be 200

@weatherWrongCordinates  @weatherCity
Scenario: Search for a weather with a wrong longitude
Given I access the OpenWeather URL passing the lat "-4945" and lon "-22"
Then the status code should be 400
And should have the message "wrong latitude"

@weatherZipCode @weatherCity
Scenario: Search for a weather with zipcode
Given I access the OpenWeather URL passing the zipcode '04143010' and countrycode "BR"
Then the status code should be 200

@wetharWrongZipCode @weatherCity
Scenario: Search for a weather with wrong zipcode
Given I access the OpenWeather URL passing the zipcode '0414' and countrycode "BR"
Then the status code should be 404
And should have the message "city not found"
