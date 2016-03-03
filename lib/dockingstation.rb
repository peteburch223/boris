require_relative 'bike.rb'

class DockingStation
   DEFAULT_CAPACITY = 20
	attr_reader :capacity

	def initialize(capacity = DEFAULT_CAPACITY)
		@bikes = []
		@capacity = capacity

	end

	def dock(bike)
		fail "Station is full" if full?
		bikes << bike
	end

	def release_bike
		fail "No bikes available" if empty?
		bikes.pop
	end

	# private

		attr_reader :bikes

		def full?
		 bikes.length >= capacity
		end

		def empty?
		 bikes.length < 1
		end

end
