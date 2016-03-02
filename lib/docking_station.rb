class DockingStation
	attr_reader :bike

  def release_bike
  	raise "No Bikes!" unless @bike
  	@bike
  end

  def dock_bike(bike)
		raise "Too Many Bikes!" if @bike
  	@bike = bike
  end
end
