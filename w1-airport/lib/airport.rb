require_relative 'weather'
class Airport
  DEFAULT_CAPACITY = 5
  include Weather
  attr_reader :planes, :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @planes = []
  end

  def dock(plane)
    return false unless can_dock?
    @planes << plane unless @planes.include?(plane)
  end

  def plane_count
    planes.count
  end

  def release(plane)
    @planes.delete(plane) if @planes.include?(plane) && good_weather?
  end

  private

  def full?
    plane_count >= capacity
  end

  def can_dock?
    !full? && good_weather?
  end
end
