require "colorize"
require "tty-prompt"
require "tty-progressbar"

class RockPaperScissors

    def rockPaperScissors

        numberOfTimesPlayed = 0
        donePlaying = false

        while donePlaying == false

        prompt = TTY::Prompt.new
        bar = TTY::ProgressBar.new("Randomly generating choice: [:bar]", total: 50)
        
       print"""
            _______
        ---'   ____\)
              \(_____\)
              \(_____\)
              \(____\)
        ---.__\(___\)  
             _______
        ---'    ____\)____
                   ______\)
                  _______\)
                 _______\)
        ---.__________\)   
            _______
        ---'   ____\)____
                  ______\)
               __________\)
              \(____\)
        ---.__\(___\)

        """

        choices = {Rock: 1, Paper: 2, Scissors: 3}
        choice = prompt.select("What's your choice?".colorize(:magenta), choices)
        random = rand(3) + 1

        50.times do
            sleep(0.05)
            bar.advance  # by default increases by 1
            end
            sleep(1)
        if choice == 1
            puts "Congratulations, You chose Rock and I chose Scissors, you win!".colorize(:magenta)
        elsif choice == 2
            puts "Congratulations, You chose Paper and I chose Rock, you win!".colorize(:magenta)
        else
            puts "Congratulations, You chose Scissors and I chose Paper, you win!".colorize(:magenta)
        end
        sleep(2)
        puts "Would you like to play again?".colorize(:magenta)
        play = prompt.yes?("Play Again?".colorize(:magenta))
        if play == true
            numberOfTimesPlayed += 1
            donePlaying = false
        else
            donePlaying = true
        end
    end

    end

end