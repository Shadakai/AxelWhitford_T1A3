require "tty-prompt"
require "colorize"
require_relative "../module/operatingSystemChecker.rb"
require_relative "../classes/dialogue.rb"
require_relative "../classes/escapeDialogue.rb"
require_relative "../games/headsOrTails.rb"

# initialize 

dialogue = Stage3_dialogue.new

# initialize gems

prompt = TTY::Prompt.new

# Keep track how many attempts they do to leave

attempts = 0

# check operating system

operatingSystem = OS.mac?

if operatingSystem == true 
    begin
        dialogue.hello
        continue = prompt.yes?("Do you wish to continue?")
            if continue == true 
                system(%Q{say -v "karen" "Okay lets begin"})
            else
                system(%Q{say -v "karen" "Too bad, lets begin anyways"})
            end
            dialogue.firstTest
    rescue Interrupt
        escapeAttemptsDialogue(attempts)
        attempts += 1
        retry
    end
else
    dialogue.helloWindows
    continue = prompt.yes?("Do you wish to continue?")
    if continue == true 
        puts "Okay lets begin"
    else
        puts"Too bad, lets begin anyways"
    end
    dialogue.firstTestWindows
end

# ask for maths answers

answer = prompt.ask("Please solve x:".colorize(:magenta), convert: :int, default: ENV["User"])
    
# handle answer

if answer == 2
    if operatingSystem == true
        system(%Q{say -v "karen" "I told you it was an easy one"})
    else
        puts "I told you it was an easy one"
    end
else
    if operatingSystem == true
        dialogue.failedMaths
    else
        dialogue.failedMathsWindows
    end
end

# start second test

if operatingSystem == true
    dialogue.secondTest
else
    dialogue.secondTestWindows
end

# ask for answer

trolleyOptions = ["Pull the lever sacrificing the one for the many","Don't touch the lever because you don't want blood on your hands","Pull the brake lever that you didn't see before"]
trolleyAnswer = prompt.select("What do you do?", trolleyOptions)

# handle answer for trolley problem

if trolleyAnswer == "Don't touch the lever because you don't want blood on your hands"
    if operatingSystem = true 
        dialogue.doNothing
    else
        dialogue.doNothingWindows
    end
elsif trolleyAnswer == "Pull the lever sacrificing the one for the many"
    if operatingSystem = true 
        dialogue.pullLever
    else
        dialogue.pullLeverWindows
    end
else
    if operatingSystem = true 
        dialogue.pullBreak 
    else
        dialogue.pullBreakWindows
    end
end

if operatingSystem == true
    dialogue.postTrolleyProblem
else
    dialogue.postTrolleyProblemWindows
end

# heads or tails

game = HeadsOrTails.new
game.begin
    



