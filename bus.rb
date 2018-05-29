class Bus

  attr_reader(:route, :destination, :passengers)

  def initialize(route, destination)
    @route = route
    @destination = destination
    @passengers = []
  end

  def pick_up(person)
    @passengers.push(person)
  end
  #
  def drop_off(person)
    arrived  = @passengers.index(person)
    @passengers.delete_at(arrived)
  end

end
 
