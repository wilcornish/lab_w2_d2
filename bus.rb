class Bus

  attr_reader(:route)

  def initialize(route, destination)
    @route = route
    @destination = destination
    @passengers = []
  end


end
