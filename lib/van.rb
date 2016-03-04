require_relative 'dockingstation'

class Van
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def load(bike)
    @bikes << bike
  end

  def unload
  end
end
