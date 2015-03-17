require_relative 'bike'

class DockingStation
  attr_writer :bike
  alias_method :dock, :bike=

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end
end
