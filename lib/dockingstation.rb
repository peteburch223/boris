require_relative 'bike'

class DockingStation
DEFAULT_CAPACITY = 20

	attr_reader :bikes
	attr_accessor :capacity

	def initialize(capacity=DEFAULT_CAPACITY)
		@capacity = capacity
		@bikes = [] #Array.new(20) {Bike.new}
	end

	def release_bike
		raise ("No bikes left, try again later") if empty?
		bike = @bikes.pop

	end

	def dock_bike(bike)
		raise ("There are no spaces available") if full?
		@bikes << bike
	end

	private

	def full?
		@bikes.length >= DEFAULT_CAPACITY
	end

	def empty?
		@bikes.length == 0
	end
end
