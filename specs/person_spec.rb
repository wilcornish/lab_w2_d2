require("minitest/autorun")
require_relative("../person.rb")

class PersonTest < MiniTest::Test

  def setup
    @person1 = Person.new("Barry", 21)
    @person2 = Person.new("Harry", 25)
  end

  def test_person_name
    assert_equal("Barry", @person1.name())
  end

  def test_person_age
    assert_equal(21, @person1.age())
  end

end
