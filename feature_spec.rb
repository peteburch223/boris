require './lib/dockingstation.rb'

station = DockingStation.new
station2 = DockingStation.new(40)

20.times { station.dock_bike(Bike.new)}
p station.bikes

p station.bikes.sample.working? 
