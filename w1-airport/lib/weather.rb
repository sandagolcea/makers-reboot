module Weather
  CHANCE_OF_GOOD_WEATHER = 80
  def good_weather?
    rand(1..100) < CHANCE_OF_GOOD_WEATHER
  end
end
