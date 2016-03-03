class Garage

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def accept(bike)
    bikes << bike
  end

  def fix!
    bikes.each{|bike| bike.working = true}
  end

  def release
  end
end
