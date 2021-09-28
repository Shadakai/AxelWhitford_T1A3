require "tty-prompt"
require "colorize"
require_relative "../classes/user.rb"
require_relative "../classes/ai.rb"
require_relative "../classes/dialogue.rb"
require_relative "../games/numberGuessing.rb"

#initialize dialogue

dialogue = Stage2_dialogue.new
numberGuesser = NumberGuesser.new

#step through dialogue

dialogue.numberGuessingGame
numberGuesser.numberGuessingGame
dialogue.rockPaperScissors
