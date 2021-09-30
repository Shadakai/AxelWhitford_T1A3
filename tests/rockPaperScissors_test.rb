require 'test/unit'
require_relative "../games/rockPaperScissors.rb"


class RockPaperScissorsTest < Test::Unit::TestCase

    def test_create
        rockPaperScissors = RockPaperScissors.new
    end

    def test_choice
        rockPaperScissors = RockPaperScissors.new
        choice = rockPaperScissors.rockPaperScissors
        if choice == 1
            assert_equal(1,choice)
        elsif choice == 2
            assert_equal(2,choice)
        else
            assert_equal(3,choice)
        end
    end

    def test_computerChoice
        rockPaperScissors = RockPaperScissors.new
        computer = rand(3) + 1
        if computer == 1
            assert_equal(1,computer)
        elsif computer == 2
            assert_equal(2,computer)
        else
            assert_equal(3,computer)
        end
    end

end

