# frozen_string_literal: true

require "zeitwerk"
require_relative "aoc/inflector"
require "pry"

loader = Zeitwerk::Loader.for_gem
loader.inflector = AOC::Inflector.new
loader.setup

module AOC
  class Error < StandardError; end
end
