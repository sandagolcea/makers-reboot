module Weather
  def good_weather?
    # 80% chance of good weather
    rand(1..100) < 80 ? true : false
  end

  def weather_reading
    good_weather? ? :sunny : :stormy
  end
end
