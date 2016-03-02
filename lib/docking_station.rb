class DockingStation
	attr_reader :bike

  def release_bike


  	if @bike.nil?

  		raise "No Bikes!"
  	else
    	
    	@bike = nil
    	Bike.new
	end
  end

  def dock_bike(bike)
  	@bike = bike
  end
end
