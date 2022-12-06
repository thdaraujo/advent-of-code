# frozen_string_literal: true

module AOC
  class Inflector < Zeitwerk::Inflector
    def camelize(basename, abspath)
      if basename =~ /\Aaoc(.*)/
        "AOC#{super($1, abspath)}"
      else
        super
      end
    end
  end
end
