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
		bike = @bikes.last
		raise ("Sorry, this bike is broken") unless bike.working?
		@bikes.pop
	end

	def release_broken_bike
		@bikes.shift if !@bikes.first.working?
	end

	def dock_bike(bike)
		raise ("There are no spaces available") if full?
		@bikes << bike
	  @bikes.sort_by!{|bike| bike.working?.to_s}
	end

	private

	def full?
		@bikes.length >= @capacity
	end

	def empty?
		@bikes.length == 0
	end
end
