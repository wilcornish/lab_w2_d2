class BusStop

  attr_reader(:name, :queue)

  def initialize(name)
    @name = name
    @queue = []
  end

  def join_queue(person)
    @queue.push(person)
  end

  def empty_queue
    @queue.clear
  end



end
