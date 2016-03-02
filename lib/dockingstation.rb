require_relative 'bike'

class DockingStation

	attr_reader :bike

	def initialize
		@bike = Bike.new
	end

	def release_bike
		raise ("No bikes left, try again later") unless @bike
		out_bike, @bike = @bike, nil
		out_bike

	end

	def dock_bike(bike)
		bike = @bike
	end
end
