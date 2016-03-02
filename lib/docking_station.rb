class DockingStation
	attr_reader :bikes

	DEFAULT_CAPACITY = 20

	def initialize
		@bikes = []
	end

  def release_bike
  	raise "No Bikes!" if empty?		
  	@bikes.pop
  end

  def dock_bike(bike)
		raise "Too Many Bikes!" if full?
  	@bikes << bike
  end

  private

  def full?
	@bikes.length == DEFAULT_CAPACITY
  end

  def empty?
  	@bikes.empty?
  end
end
