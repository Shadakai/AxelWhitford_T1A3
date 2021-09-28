require "colorize"
require "tty-prompt"
require "tty-progressbar"


def numberGuessingGame()

    prompt = TTY::Prompt.new
    bar = TTY::ProgressBar.new("Randomly generating number: [:bar]", total: 50)

    numberOfTimesPlayed = 0
    donePlaying = false

    while donePlaying == false
    case numberOfTimesPlayed 
    when 0 
        puts "Welcome to Number Guesser".colorize(:magenta)
    when < 0 
        puts "Welcome to back to Number Guesser".colorize(:magenta)
    begin
        number = prompt.ask("Please enter a number?".colorize(:magenta), :convert :int ,default: ENV["User"])
    rescue
        puts "Please enter a valid Integer"
        retry
    end
    randomNum = rand(number)
    50.times do
        sleep(0.05)
        bar.advance  # by default increases by 1
    end
      sleep(1)
        puts "Next step, make a guess to what you think the number is".colorize(:magenta)
        guess = prompt.slider("What's your guess".colorize(:magenta), min: 1, max: number, step: 1)
        puts "Congratulations the number was indeed #{guess}".colorize(:magenta)
        puts "Would you like to play again?".colorize(:magenta)
        play = prompt.yes?("Play Again?".colorize(:magenta))
        if play == yes
            donePlaying = false
        else
            donePlaying = true
        end
      end

end