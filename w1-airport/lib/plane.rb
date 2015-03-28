class Plane
  attr_reader :status
  def initialize
    @status = :flying
  end

  def update_status
    @status = status == :flying ? :landed : :flying
  end

  def land
    fail 'Plane has already landed' unless flying?
    update_status
  end

  def take_off
    fail 'Plane is already flying' if flying?
    update_status
  end

  def land_at(airport)
    land if airport.dock(self)
  end

  def take_off_from(airport)
    take_off if airport.release(self)
  end

  def flying?
    status == :flying
  end
end
