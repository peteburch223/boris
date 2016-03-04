

class Garage
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def store(bike)
    @bikes << bike
  end

  def release_bike
    raise ("Garage empty") if empty?
    @bikes.pop
  end

  def fix
    bikes.each do |bike|
      bike.report_working
    end
  end

  private
  def empty?
  	@bikes.length == 0
  end
end
