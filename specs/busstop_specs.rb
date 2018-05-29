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
end
