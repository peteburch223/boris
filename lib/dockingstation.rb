require_relative 'bike.rb'

class DockingStation

	attr_reader :bikes

	def initialize
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
		 @bikes.length >= 20
		end

		def empty?
		 @bikes.length < 1
		end

end
