require_relative 'bike.rb'

class DockingStation
   DEFAULT_CAPACITY = 20
		attr_reader :bikes

	def initialize(*capacity)
		@bikes = []
	end

	def dock(bike)
		fail "Station is full" if full?
		@bikes << bike
	end

	def release_bike
		fail "No bikes available" if empty?
		@bikes.pop
	end

	private

		def full?
		 @bikes.length >= DEFAULT_CAPACITY
		end

		def empty?
		 @bikes.length < 1
		end

end
