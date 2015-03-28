require_relative 'weather'
class Airport
  DEFAULT_CAPACITY = 20
  include Weather
  attr_reader :planes, :capacity
  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @planes = []
  end

  def dock(plane)
    can_dock?
    @planes << plane unless @planes.include?(plane)
  end

  def plane_count
    planes.count
  end

  private

  def full?
    plane_count >= capacity
  end

  def can_dock?
    fail 'Airport is full' if full?
    fail 'Storm coming: flights cancelled' unless good_weather?
  end
end
