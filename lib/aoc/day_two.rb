module AOC
  class DayTwo
    def solve_first_half
      reader
        .stream
        .map do |line|
          line.chomp.split.map { |e| translate(e) }
        end
        .sum { |other, mine| round_score(other, mine) }
    end

    def solve_second_half
    end

    private

    def round_score(other, mine)
      case [other, mine]
      in [move, ^move]
        mine + 3 # draw
      in [2, 1] | [3, 2] | [1, 3]
        mine + 0 # lose
      else
        mine + 6 # win
      end
    end

    def translate(item)
      {
        "A" => 1, "B" => 2, "C" => 3,
        "X" => 1, "Y" => 2, "Z" => 3
      }[item]
    end

    def reader
      path = "test/support/problems/day-2"
      AOC::Reader.new(path)
    end
  end
end
