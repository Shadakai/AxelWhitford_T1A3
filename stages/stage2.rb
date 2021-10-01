require_relative "../classes/user.rb"
require_relative "../classes/ai.rb"
require_relative "../classes/dialogue.rb"
require_relative "../games/numberGuessing.rb"
require_relative "../games/rockPaperScissors.rb"
require_relative "../games/hangman.rb"

#initialize dialogue

dialogue = Stage2_dialogue.new
numberGuesser = NumberGuesser.new
rockPaperScissors = RockPaperScissors.new
hangman = Hangman.new

#step through dialogue

dialogue.numberGuessingGame
numberGuesser.numberGuessingGame
dialogue.rockPaperScissors
rockPaperScissors.rockPaperScissors
dialogue.hangman
hangman.begin
dialogue.stage2Conclusion

#load and send too stage3

require_relative "stage3.rb"
load("stage3.rb")




