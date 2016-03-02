require_relative 'bike'

class DockingStation

	attr_reader :bikes

	def initialize
		@bikes = [] #Array.new(20) {Bike.new}
	end

	def release_bike
		raise ("No bikes left, try again later") if @bikes.length == 0
		bike = @bikes.pop

	end

	def dock_bike(bike)
		raise ("Sorry dock is full, try again later") if @bikes.length >= 20 
		@bikes << bike
	end
end
