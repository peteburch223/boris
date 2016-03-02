require_relative 'bike'

class DockingStation
DEFAULT_CAPACITY = 20
	
	attr_reader :bikes

	def initialize(capacity=DEFAULT_CAPACITY)
		@capacity = capacity 
		@bikes = [] #Array.new(20) {Bike.new}
	end

	def release_bike
		raise ("No bikes left, try again later") if empty?
		bike = @bikes.pop

	end

	def dock_bike(bike)
		raise ("Sorry dock is full, try again later") if full?
		@bikes << bike
	end

	private

	def full?
		@bikes.length >= @capacity
	end

	def empty?
		@bikes.length == 0
	end
end
