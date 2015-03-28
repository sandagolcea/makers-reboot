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
    check_dock_permission
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

  def check_dock_permission
    fail 'Airport is full' if full?
    fail 'Storm coming: flights cancelled' unless good_weather?
  end
end
