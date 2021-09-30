require "colorize"
require "tty-prompt"
require "tty-progressbar"

class NumberGuesser

    def numberGuessingGame()

        # Initialize variables 

        prompt = TTY::Prompt.new
        bar = TTY::ProgressBar.new("Randomly generating number: [:bar]", total: 50)

        numberOfTimesPlayed = 0
        donePlaying = false

        puts "="*50

        # Loop through the game until the player decides to stop

        while donePlaying == false

        # Keep track of the number of times player and customize a message depending on that

        case numberOfTimesPlayed 
        when 0 
            puts "Welcome to Number Guesser".colorize(:magenta)
        when 1..20 
            puts "Welcome to back to Number Guesser".colorize(:magenta)
        else
            puts "Don't you think you've played enough?".colorize(:magenta)
        end

        # Ask them for a number and check if it is indeed the number

        begin
            number = prompt.ask("Please enter any number:".colorize(:magenta), convert: :int, default: ENV["User"])
        rescue
            puts "Please enter a valid Integer"
            retry
        end

        # Pretend to load a random number

        50.times do
            sleep(0.05)
            bar.advance  # by default increases by 1
            end
        sleep(1)
            puts "Next step, make a guess to what you think the number is".colorize(:magenta)

            # Ask them to make a guess between 1 and the number they inputted

            guess = prompt.slider("What's your guess".colorize(:magenta), min: 1, max: number, step: 1)
            sleep(2)
            puts "Congratulations the number was indeed #{guess}".colorize(:magenta)
            sleep(2)

            # Ask them to play again, if yes then loop back if no then exit

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