class DockingStation
	attr_reader :bikes

	MAX_BIKES = 20

def initialize
	@bikes = []
end

  def release_bike
  	raise "No Bikes!" if @bikes.empty?
  	@bikes.pop
  end

  def dock_bike(bike)
		raise "Too Many Bikes!" if @bikes.length == MAX_BIKES
  	@bikes << bike
  end
end
