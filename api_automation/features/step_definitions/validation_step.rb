Then('the status code should be {int}') do |code|
    expect(@response_weather.code).to eq code
  end

  Then('should have the message {string}') do |message|
    expect(@response_weather['message']).to eq(message)
  end