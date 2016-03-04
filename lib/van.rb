require 'bikecontainer'

class Van
  include BikeContainer

  alias_method :load, :bike_in
  alias_method :unload, :bike_out

end
