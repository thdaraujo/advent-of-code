# frozen_string_literal: true

module AOC
  class Reader
    def initialize(path)
      @path = path
    end

    def stream
      File.readlines(path)
    end

    private

    attr_reader :path
  end
end
