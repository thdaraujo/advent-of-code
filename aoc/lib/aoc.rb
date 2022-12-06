# frozen_string_literal: true

require "zeitwerk"
require_relative "aoc/inflector"
require "pry"

loader = Zeitwerk::Loader.for_gem
loader.inflector = AOC::Inflector.new
loader.setup

module AOC
  class Error < StandardError; end

  class DayOne
    def solve_first_half
      total_calories_per_elf(reader).max
    end

    def solve_second_half
      totals = total_calories_per_elf(reader)
      totals.sort.last(3).sum
    end

    private

    def reader
      path = "test/support/problems/day-1"
      AOC::Reader.new(path)
    end

    def total_calories_per_elf(reader)
      reader
        .stream
        .map { |line| line.chomp.to_i }
        .slice_before(&:zero?)
        .map(&:sum)
    end
  end
end
