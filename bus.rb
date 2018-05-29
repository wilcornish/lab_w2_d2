class Bus

  attr_reader(:route, :destination, :passengers)

  def initialize(route, destination)
    @route = route
    @destination = destination
    @passengers = []
  end


end
