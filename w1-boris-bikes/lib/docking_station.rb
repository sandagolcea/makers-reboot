require_relative 'bike'
STATION_FULL_ERR = 'Station full'
STATION_EMPTY_ERR = 'No bikes available'
DEFAULT_CAPACITY = 20

class DockingStation
  def initialize
    @bikes = []
  end

  def dock bike
    fail STATION_FULL_ERR if full?
    @bikes << bike
  end

  def release_bike
    fail STATION_EMPTY_ERR if empty?
    @bikes.pop
  end

  private

  attr_reader :bike

  def empty?
    @bikes.reject(&:broken?).length == 0
  end

  def full?
    @bikes.length >= DEFAULT_CAPACITY
  end
end
