# frozen_string_literal: true

require "test_helper"

class AOCTest < Test::Unit::TestCase
  # test "VERSION" do
  #   assert do
  #     ::AOC.const_defined?(:VERSION)
  #   end
  # end

  test "day 1 - first half" do
    problem = AOC::DayOne.new
    actual = problem.solve_first_half

    assert_equal(67_622, actual)
  end

  test "day 1 - second half" do
    problem = AOC::DayOne.new
    actual = problem.solve_second_half

    assert_equal(201_491, actual)
  end
end
