class Airport
  DEFAULT_CAPACITY = 20
  attr_reader :planes
  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @planes = []
  end

  def dock(plane)
    fail 'Airport is full' if full?
    @planes << plane
    plane.land
  end

  def plane_count
    planes.count
  end

  private

  def full?
    plane_count >= @capacity
  end
end
