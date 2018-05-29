require("minitest/autorun")
require_relative("../person.rb")
require_relative("../bus.rb")

class BusTest < MiniTest::Test

  def setup
    @bus1 = Bus.new(34, "Cowdenbeath")
    @person1 = Person.new("Barry", 21)
  end

  def test_route_number
    assert_equal(34, @bus1.route())
  end

  def test_destination
    assert_equal("Cowdenbeath", @bus1.destination())
  end

  def test_passenger_count
    assert_equal(0, @bus1.passengers().count())
  end

  def test_pick_up_passenger
    @bus1.pick_up(@person1)
    assert_equal(1, @bus1.passengers().count())
    refute_nil(@bus1.passengers()[0])
  end

  def test_drop_off_passenger
    @bus1.pick_up(@person1)
    @bus1.drop_off(@person1)
    assert_equal(0, @bus1.passengers().count())
  end

end
