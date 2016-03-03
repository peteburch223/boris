require './lib/dockingstation.rb'
require './lib/van.rb'
require './lib/garage.rb'
require './lib/bike.rb'

van = Van.new
garage = Garage.new
station = DockingStation.new
bikes = []

20.times { bikes << Bike.new }

garage.load(bikes)
