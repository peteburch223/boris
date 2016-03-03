require_relative 'dockingstation'

class Van
  def take_broken_bikes_from(station)
    station.bikes.select do |bike|
      bike.broken?
    end
  end
end
