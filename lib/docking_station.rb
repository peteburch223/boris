require_relative 'bike'

class DockingStation
  attr_reader :bike_count

  def initialize
  	@bike_count = 10
  end
  def release_bike
  	Bike.new
  end

  def return_bike(bike)
  	@bike_count += 1 if bike.is_a? Bike

  end
end
