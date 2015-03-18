require_relative 'bike'

module BikeContainer
  DEFAULT_CAPACITY = 20
  STATION_FULL_ERR = 'Station full'
  STATION_EMPTY_ERR = 'No bikes available'
  attr_writer :capacity
  alias_method :capacity, :capacity=

  def bikes
    @bikes ||= []
  end

  def capacity
    @capacity ||= DEFAULT_CAPACITY
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
    bikes.reject(&:broken?).length == 0
  end

  def full?
    bikes.length >= capacity
  end
end
