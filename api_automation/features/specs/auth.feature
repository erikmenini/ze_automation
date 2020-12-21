Feature: Have a key to make sure that a user is login

As a user,
I want to have a api key
To ensure that the user is logded in 

@auth
Scenario Outline: Authorization of the api weather
Given I access the OpenWeather URL passing the <city> and the <apikey>
Then the status code should be <code>
    Examples:
        | city        | apikey                             | code |
        | "Fortaleza" | "78bfe2566c10bbac3b092a208fd80d8f" | 200  |
        | "Fortaleza" | " "                                | 401  |
        | "Fortaleza" | "wrongKey"                         | 401  |