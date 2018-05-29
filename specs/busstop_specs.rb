require("minitest/autorun")
require_relative("../person.rb")
require_relative("../busstop.rb")
require_relative("../bus.rb")

class BusStopTest < MiniTest::Test

  def setup
    @bus1 = Bus.new(34, "Cowdenbeath")
    @person1 = Person.new("Barry", 21)
    @person2 = Person.new("Harry", 25)
    @busstop1 = BusStop.new("Kelty Stop")
  end

  def test_get_busstop_name
    assert_equal("Kelty Stop", @busstop1.name())
  end

  def test_person_joins_queue
    @busstop1.join_queue(@person1)
    assert_equal(1, @busstop1.queue().count())
    refute_nil(@busstop1.queue()[0])
  end

end
