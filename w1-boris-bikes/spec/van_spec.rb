require 'van'

describe Van do
  include BikeContainer
  def receive_bikes_from(place, bike)
    place.release_bike(bike)
    dock(bike)
  end
end
