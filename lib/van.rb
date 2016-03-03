require_relative 'dockingstation'

class Van
  def take_broken_bikes_from(station)
    # broken_bikes = station.bikes.reject! { |bike| bike.broken? }
    # #station.bikes = station.bikes - broken_bikes #if broken_bikes.size > 0
    # broken_bikes
    #
    broken_bikes =[]
    station.bikes.each do |bike|
      broken_bikes << bike if bike.broken?
      unless bike.broken?
        station.bikes - [bike]
      end
    end
    broken_bikes
  end
end
