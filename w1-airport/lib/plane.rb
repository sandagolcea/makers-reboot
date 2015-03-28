class Plane
  def initialize
    @status = :flying
  end

  def land
    @status = :landed
  end

  def take_off
    @status = :flying
  end

  def flying?
    @status == :flying
  end
end
