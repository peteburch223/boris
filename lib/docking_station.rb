require_relative 'bike'

class DockingStation
  attr_reader :bike_count
  def release_bike
  	Bike.new
  end

  def return_bike(bike)
  end
end
