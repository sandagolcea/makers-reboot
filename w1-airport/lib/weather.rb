module Weather
  CHANCE_OF_GOOD_WEATHER = 80
  def good_weather?
    rand(1..100) < CHANCE_OF_GOOD_WEATHER ? true : false
  end

  def weather_reading
    good_weather? ? :sunny : :stormy
  end
end
