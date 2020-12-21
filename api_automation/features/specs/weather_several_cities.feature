Feature: Know the wether for several cities

As a user,
I want to know the weather a several cities
Using the coordinates and several Id

@weatherSeveralCitiesBox  @weatherCities
Scenario: Search for a weather for a zone in the map
Given I access the OpenWeather URL passing the lon left "-47", lat-bottom "-23", lon-right "-45", lat-top "-22" and zoom "10"
Then the status code should be 200

@weatherSeveralCitiesBoxBigArea  @weatherCities
Scenario: Search for a weather for a zone in the map
Given I access the OpenWeather URL passing the lon left "-47", lat-bottom "23", lon-right "45", lat-top "22" and zoom "10"
Then the status code should be 400
And should have the message "Requested area is larger than allowed for your account type (25.00 square degrees)"

@weatherSeveralCitiesBoxWrongData  @weatherCities
Scenario: Search for a weather for a zone in the map
Given I access the OpenWeather URL passing the lon left "-47", lat-bottom "teste", lon-right "45", lat-top "22" and zoom "10"
Then the status code should be 400
And should have the message "\"teste\" is not a float"

@weatherSeveralCitiesCircle  @weatherCities
Scenario: Search for a weather with longitude and latitude
Given I access the OpenWeather URL passing the lat "-22.61", lon "-46.06" and "5" cities
Then the status code should be 200

@weatherSeveralCitiesCircleWithoutResults @weatherCities
Scenario: Search for a weather with longitude and latitude
Given I access the OpenWeather URL passing the lat "-49", lon "-22" and "5" cities
Then the status code should be 404
And should have the message "no results"

@weatherSeveralCitiesCircleWithWrongLat @weatherCities
Scenario: Search for a weather with longitude and latitude
Given I access the OpenWeather URL passing the lat "-4945", lon "-22" and "5" cities
Then the status code should be 400
And should have the message "wrong latitude"

@weatherSeveralCitiesCircleWithWrongLon @weatherCities
Scenario: Search for a weather with longitude and latitude
Given I access the OpenWeather URL passing the lat "-49", lon "-2234" and "5" cities
Then the status code should be 400
And should have the message "wrong longitude"

@weatherSeveralCityID  @weatherCities
Scenario: Search for a weather and validate the data
Given I access the OpenWeather URL passing three ids "3448433", "3448351", "3448616"
Then the status code should be 200

@weatherSeveralCityIDWithoutPassingID  @weatherCities
Scenario: Search for a weather and validate the data
Given I access the OpenWeather URL passing three ids "", "", ""
Then the status code should be 404
And should have the message "No data: 404006"