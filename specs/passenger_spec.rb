require("minitest/autorun")
require_relative("../passenger.rb")

class PassengerTest < MiniTest::Test

  def setup(name, age)
    name = "Barry"
    age = 21
  end

def test_passenger_name
  assert_equal("Barry", Passenger.name)
end

end
