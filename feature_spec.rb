require '../lib/dockingstation.rb'

station = DockingStation.new
station2 = DockingStation.new(40)

20.times { station.dock_bike(Bike.new)}
p station.bikes

40.times { station2.dock_bike(Bike.new)}
p station2.bikes

40.times {station2.release_bike}
p station2.bikes 

