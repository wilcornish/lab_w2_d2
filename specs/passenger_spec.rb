require("minitest/autorun")
require_relative("../passenger.rb")

class PassengerTest < MiniTest::Test

  def setup
    @passenger1 = Passenger.new("Barry", 21)

  end

def test_passenger_name
  assert_equal("Barry", @passenger1.name())
end

end
