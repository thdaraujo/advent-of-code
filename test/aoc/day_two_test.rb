require "test_helper"

class DayTwoTest < Test::Unit::TestCase
  test "day 2 - first half" do
    problem = AOC::DayTwo.new
    actual = problem.solve_first_half

    assert_equal(8_392, actual)
  end

  test "day 2 - second half" do
    # problem = AOC::DayOne.new
    # actual = problem.solve_second_half

    # assert_equal(201_491, actual)
  end
end
