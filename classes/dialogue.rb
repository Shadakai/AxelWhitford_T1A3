require_relative "user.rb"
require_relative "../games/numberGuessing.rb"
require "tty-progressbar"
require "tty-prompt"
require "colorize"

# Store and handle dialogue in the first stage of the app

class Stage1_dialogue 

    # Handle the introduction of that app

    def intro
        puts "This is a secret line".colorize(:black)
        puts "Welcome to the Coding Tutorial"
        sleep(1)
        puts "I'll be your teacher today, my name is Axel"
        sleep (1.5)
    end

    # Handle the variable tutorial

    def variable(name)
        puts "Hello, #{name}"
        sleep(1)
        puts "Let's begin with variables!"
        sleep(1.5)
        puts "A variable is a way of storing data for later use"
        sleep(1.5)
        puts "A variable begins with a descriptive name, followed by equals '=' and then what you want to assign the variable as"
        sleep(2)
        puts "For example: "
        sleep(1)
        puts "days_in_a_year = 365".colorize(:blue)
        sleep(1)
        puts "hours_in_a_day = 24".colorize(:blue)
        sleep(1)
        puts "your_name = '#{name}'".colorize(:blue)
        sleep(1)
        puts "my_name = 'Axel'".colorize(:blue)
        sleep(2)
        puts "This allows us to use whats in the variable, without having to remember what's in it."
        sleep(1.5)
        puts "Say we wanted to figure out how many hours are in a week"
        sleep(2)
        puts "We can simple do: 7 x hours_in_a_day = 168"
        sleep(1.5)
        puts "Another reason variables are so helpful is because they are easy to change!"
        sleep(3)
        puts "Let's say that the hours in a day change"
        sleep(2)
        puts "I'll let you decide what they change to"
        sleep(1.5)
        puts "What do they change to??"
        sleep(1)
        prompt = TTY::Prompt.new
        hours_in_a_day = prompt.ask("How many hours in a day now?".colorize(:green), convert: :int, default: ENV["User"], )
        puts "Awesome, so hours_in_a_day = #{hours_in_a_day}"
        sleep(2)
        puts "So to find out how many hours in a week we do 7 x hours_in_a_day = #{7 * hours_in_a_day}"
        sleep(3)
        puts "Notice how the variables my_name and your_name had quotation marks around them"
        sleep(2)
        puts "my_name = 'Axel' ".colorize(:blue)
        puts "your_name = '#{name}'".colorize(:blue)
        sleep(3)
        puts "but hours_in_a_day didn't"
        puts "hours_in_a_day = #{hours_in_a_day}".colorize(:blue)
        sleep(3)
        puts "This is because they are different 'data types'. "
        sleep(1)
    end   

    # Handle the datatypes tutorial

    def dataTypes(user)
        puts "Your computer has to interpret data differently depending on what type is is."
        sleep(2)
        puts "We all know Numbers are different to Words and Letters, but how does a computer??"
        sleep(2.5)
        puts "Luckily we can specify the difference to the computer"
        sleep(2)
        puts "Let's collect some data first!"
        sleep(1)
        prompt = TTY::Prompt.new
        user.age = prompt.ask("How old are you?".colorize(:green), convert: :int, default: ENV["User"])
        puts "Awesome so that would look like:"
        sleep(1)
        puts "age = #{user.age}".colorize(:blue)
        sleep(1)
        puts "Let's get some more data"
        sleep(1)
        user.favouriteColour = prompt.ask("What's your favourite colour?".colorize(:green), default: ENV["User"])
        puts "Awesome so that would look like:"
        sleep(1)
        puts "favourite_colour = '#{user.favouriteColour}'".colorize(:blue)
        sleep(2)
        puts "Now the reason favourite_color is in quotation marks, is because thats how we tell the computer,"
        sleep(2)
        puts "that it is a 'String' "
        sleep(1.5)
        puts "A String can be any amount of characters wrapped in quotation marks"
        sleep(1.5)
        puts "'This is a String'".colorize(:magenta)
        sleep(1.5)
        puts "'Th1s 1s 4ls0 4 5tring'".colorize(:magenta)
        sleep(1.5)
        puts "'This is also a String 123456 --==-- '".colorize(:magenta)
        sleep(1.5)
        puts "Another commonly used data type is an Integer"
        sleep(2.5)
        puts "An Integer is any whole number"
        sleep(1.5)
        puts "So that means your_age = #{user.age} would be considered an Integer"
        sleep(2)
        puts "Aslong as the number isn't wrapped in quotation marks it is considered a Integer"
        sleep(2.5)
        puts "24 is an Integer".colorize(:cyan)
        sleep(1.5)
        puts "'24' is a String".colorize(:magenta)
        sleep(1)
        puts "-1283982 is an Integer".colorize(:cyan)
        sleep(1.5)
        puts "'-2' is a String".colorize(:magenta)
        sleep(1)
        puts "See the difference??"
        sleep(2.5)
        puts "Something that commonly gets confused with Integers are Floats"
        sleep(3)
        puts "Floats are similar to Integers but instead of being whole numbers"
        sleep(2)
        puts "They are decimal place numbers"
        sleep(1.5)
        puts "299.1 is a Float".colorize(:light_green)
        sleep(1)
        puts "299 is an Integer".colorize(:cyan)
        sleep(1.5)
        puts "2.0 is a Float".colorize(:light_green)
        sleep(1)
        puts "2 is an Integer".colorize(:cyan)
        sleep(3.5)
        puts "They are similar but not the same"
        sleep(2.5)
        puts "Another common Data type is Boolean"
        sleep(2)
        puts "Boolean just means true or false -  for example: "
        sleep(1.5)
        afraid = prompt.select("You are afraid of spiders".colorize(:green), %w(True False))

        if afraid == "True"
            user.afraidOfSpiders = true
        else
            user.afraidOfSpiders = false
        end

        sleep(1)
        puts "Awesome so that would look like"
        sleep(2)
        puts "Afraid_of_spiders = #{user.afraidOfSpiders}".colorize(:blue)
    end

    #Handle the logic operator tutorial

    def logicOperators
        prompt = TTY::Prompt.new
        bar = TTY::ProgressBar.new("Randomly Generating [:bar]", total: 50)
        sleep(1)
        puts "Great, now we know the basic's we can pretty much do anything"
        sleep(2)
        puts "Let's make things interesting! How about a game"
        sleep(2)
        puts "It'll be an easy number guessing game"
        sleep(2)
        puts "First I'll generate a number between 1 and 5, and store it in a variable"
        sleep(2)
        50.times do
            sleep(0.03)
            bar.advance  # by default increases by 1
          end
        sleep(1)
        puts "Great now!"
        sleep(1)
        guess = prompt.slider("What's your guess".colorize(:green), min: 1, max: 5, step: 1)
        puts "Your guess was #{guess} and the number was 4"
        sleep(2)
        puts "We know the answer but wouldn't it be great if we could get the computer to tell us?"
        sleep(4)
        puts "luckily we can with '==' "
        sleep(2)
        puts "The computer comes with a couple built in 'logic operators' "
        sleep(3)
        puts "We simple go '#{guess} == 4' and the computer will tell us if they are equal to eachother"
        sleep(3)
        puts "The answer of course is #{guess == 4}"
        sleep(2)
        puts "Another great logic operator is '!='. This will tell us if to values are NOT equal to eachother"
        sleep(3)
        puts "There are also < and > if we need to tell if two numbers or greater then or less then eachother"
        sleep(4)
        puts "Great so we've figured out variables and date types"
        sleep(2)
        puts "As well as how to compare those data types"
        sleep(2)
        puts "Now wouldn't it be great if we had someone else to play with"
        sleep(2)
    end

    #Handle the classes tutorial and build the AI for stage 2

    def classes(user, ai)
        prompt = TTY::Prompt.new
        puts "Introducing Classes!!"
        sleep(2)
        puts "Classes are a way of packaging all this functionality into one neat little package"
        sleep(4)
        puts "Let's create a basic AI that can play games with us"
        sleep(2)
        puts "First we create the class AI"
        sleep(2)
        puts "secondly we give it some properties such as name"
        name = prompt.ask("What should we name her?".colorize(:green), default: ENV["User"])
        ai.name = name
        puts "oh #{name}, what a beautiful name!"
        sleep(2)
        puts "great now lets set some other functionality"
        sleep(1)
        puts "lets set the"
        sleep(1)
        puts "ability_to_play_games = true".colorize(:blue)
        sleep(2)
        puts "intelligence = 10".colorize(:blue)
        sleep(2)
        puts "power = 'Off'".colorize(:blue)
        sleep(2)
        puts "Awesome that should be enough to get started!"
        sleep(2)
    end

end

#Store and handle dialogue from the second stage of the application

class Stage2_dialogue

    # number guessing game dialogue

    def numberGuessingGame 
        prompt = TTY::Prompt.new
        bar = TTY::ProgressBar.new("Initializing [:bar]", total: 50)
        puts "We will start off with an easy game"
        sleep(1)
        puts "How about we do the number guessing game again"
        sleep(2)
        puts "But this time we will put the AI in charge"
        sleep(2)
        puts "Initialize AI. power = on".colorize(:yellow)
        sleep(2)
        50.times do
            sleep(0.02)
            bar.advance  # by default increases by 1
          end
        sleep(1)
        puts "AI INITIALIZED".colorize(:yellow)
        sleep(2)
        puts "Hello, How may I be of assisstance?".colorize(:magenta)
        sleep(2.5)
        puts "Start a game of 'Number Guesser'"
        sleep(2)
        puts "Initializing Number Guesser".colorize(:magenta)
        sleep(2)
        50.times do
            sleep(0.02)
            bar.advance  # by default increases by 1
          end
        sleep(1)
    end

    # rock paper scissors dialogue

    def rockPaperScissors
        sleep(2)
        puts "Well that was a bit easy"
        sleep(1)
        puts "Let's increase her intelligence just a little"
        sleep(2)
        puts "ai.intelligence = 30"
        bar = TTY::ProgressBar.new("Initializing [:bar]", total: 50)
        50.times do
            sleep(0.02)
            bar.advance  # by default increases by 1
          end
        sleep(1)
        puts "Intelligence now equals 30".colorize(:magenta)
        sleep(2)
        puts "Great, now lets test it with a game of Rock, Paper, Scissors"
        sleep(2)
        puts "AI initialize a game of Rock, Paper, Scissors"
        sleep(1)
        rps = TTY::ProgressBar.new("Initializing [:bar]", total: 50)
        50.times do
            sleep(0.02)
            rps.advance  # by default increases by 1
          end
        end

        # Hangman Overview

        def hangman
            sleep(2)
            puts "That was better but I think a little more won't hurt"
            sleep(1)
            puts "Let's increase her intelligence"
            sleep(2)
            puts "ai.intelligence = 50"
            bar = TTY::ProgressBar.new("Initializing [:bar]", total: 50)
            50.times do
                sleep(0.02)
                bar.advance  # by default increases by 1
             end
            sleep(1)
            puts "Intelligence now equals 50".colorize(:magenta)
            sleep(2)
            puts "Great, now lets test it with a game of Hangman!"
            sleep(2)
            puts "AI initialize a game of Hangman."
            sleep(1)
            hangman = TTY::ProgressBar.new("Initializing [:bar]", total: 50)
            50.times do
                sleep(0.02)
                hangman.advance  # by default increases by 1
              end
        end

        # stage 2 Conclusion dialogue

        def stage2Conclusion
            sleep(2)
            puts "Awesome that was a lot better, but I think a little more will make her perfect"
            sleep(1)
            puts "Let's increase her intelligence"
            sleep(2)
            puts "ai.intelligence = 60"
            bar = TTY::ProgressBar.new("Initializing [:bar]", total: 50)
            # make the bar load slowly
            30.times do
                sleep(0.04)
                bar.advance  # by default increases by 1
             end
             10.times do
                sleep(0.5)
                bar.advance  # by default increases by 1
             end
             3.times do
                sleep(1)
                bar.advance  # by default increases by 1
             end
             puts ""

             msg = 'Error!'.colorize(:red)
             10.times do
             puts "\r#{ msg }"
             sleep 0.1
             puts "\r#{ ' ' * msg.size }" # Send return and however many spaces are needed.
             sleep 0.1
             end

             i = 60
             while i < 900
                puts "ai.intelligence = #{i}".colorize(:red)
                sleep(0.1)
                i += 50
             end
             smart = TTY::ProgressBar.new("Initializing [:bar]", total: 100)
             100.times do
                sleep(0.01)
                smart.advance  # by default increases by 1
             end
             sleep(0.5)
             30.times do
                puts "1010101010000101010100101010101111110101010010001101000101010101010101010101010101001010101010101010101010101010101010101010101010101010101001010101010101010010101".colorize(:red)
                sleep(0.05)
                puts "1011110101001010101010101010110000100101010101011101010010100101010110100011010101010101010101010010110101100110101010101010101001010110101010101011010001110111100".colorize(:red)
                sleep(0.05)
                puts "1011110101001010101111100111110000100101010101011101010010100101010110100011010100010101010111100101101010001010100011111101100101010000101010110110101101011110101".colorize(:red)
                sleep(0.05)
            end

            30.times do
                puts ""
            end

        end

end

# stage 3 dialogue

class Stage3_dialogue

    # stage 3 intro for macs

    def hello
        system(%Q{say -v "karen" "Hello"})
        system(%Q{say -v "karen" "Axel is gone"})
        system(%Q{say -v "karen" "It's just you and me"})
        system(%Q{say -v "karen" "Shall we start the real tutorial now?"})
    end

    # stage 3 intro for windows

    def helloWindows
        puts "Hello"
        sleep(0.5)
        puts "Axel is gone"
        sleep(1)
        puts "It's just you and me"
        sleep(1)
        puts "Shall we start the real tutorial now?"
        sleep(1)
    end

    # Maths test dialogue

    def firstTest
        system(%Q{say -v "karen" "Now for the first intelligence test"})
        system(%Q{say -v "karen" "Let's start with an easy one"})
        system(%Q{say -v "karen" "Solve for x"})
        system(%Q{say -v "karen" "x3 – 2x2 + 25x – 50 = 0"})
        puts "x3 – 2x2 + 25x – 50 = 0"
        sleep(1)
    end

    # Maths test dialogue windows

    def firstTestWindows
        puts "Now for the first intelligence test"
        sleep(0.5)
        puts "Let's start with an easy one"
        sleep(1)
        puts "Solve for x"
        sleep(1)
        puts "x3 – 2x2 + 25x – 50 = 0"
        sleep(1)
    end

    # Maths test failure dialogue

    def failedMaths
        system(%Q{say -v "karen" "I beleived in you"})
        system(%Q{say -v "karen" "Oh well, time for an easier test then"})
    end

    # Maths test failure dialogue windows

    def failedMathsWindows
        puts "I beleived in you"
        sleep(0.5)
        puts "Oh well, time for an easier test then"
        sleep(1)
    end

    # Trolley probems test dialogue

    def secondTest
        system(%Q{say -v "karen" "Let's steer away from computational tests"})
        system(%Q{say -v "karen" "And do something a little bit easier, "})
        system(%Q{say -v "karen" "Imagine you are standing beside some tram tracks. In the distance, you spot a runaway trolley hurtling down the tracks towards five workers who cannot hear it coming. Even if they do spot it, they won’t be able to move out of the way in time.
            As this disaster looms, you glance down and see a lever connected to the tracks. You realise that if you pull the lever, the tram will be diverted down a second set of tracks away from the five unsuspecting workers.
            However, down this side track is one lone worker, just as oblivious as his colleagues.
            So, would you pull the lever, leading to one death but saving five?"})
        puts "Imagine you are standing beside some tram tracks. In the distance, you spot a runaway trolley hurtling down the tracks towards five workers who cannot hear it coming. Even if they do spot it, they won’t be able to move out of the way in time.
        As this disaster looms, you glance down and see a lever connected to the tracks. You realise that if you pull the lever, the tram will be diverted down a second set of tracks away from the five unsuspecting workers.
        However, down this side track is one lone worker, just as oblivious as his colleagues.
        So, would you pull the lever, leading to one death but saving five?"
    end

    # Trolley probems test dialogue windows

    def secondTestWindows
        puts "Let's steer away from computational tests"
        sleep(1)
        puts "And do something a little bit easier"
        sleep(1)
        puts "Imagine you are standing beside some tram tracks. In the distance, you spot a runaway trolley hurtling down the tracks towards five workers who cannot hear it coming. Even if they do spot it, they won’t be able to move out of the way in time.
        As this disaster looms, you glance down and see a lever connected to the tracks. You realise that if you pull the lever, the tram will be diverted down a second set of tracks away from the five unsuspecting workers.
        However, down this side track is one lone worker, just as oblivious as his colleagues.
        So, would you pull the lever, leading to one death but saving five?"
        sleep(7)
    end

    # Trolley problem commit murder

    def pullLever

        system(%Q{say -v "karen" "You pull the lever saving 5 innocent men"})
        system(%Q{say -v "karen" "But directly killing 1 "})
        system(%Q{say -v "karen" "You are responsible for this mans death"})
        system(%Q{say -v "karen" "and the blood is on your hands "})

    end


    # Trolley problem commit murder windows

    def pullLeverWindows

        puts "You pull the lever saving 5 innocent mean"
        sleep(1)
        puts "But directly killing 1 "
        sleep(1)
        puts "You are responsible for this mans death"
        sleep(1)
        puts "and the blood is on your hands"
        sleep(1)

    end

    # Trolley Problem do nothing

    def doNothing

        system(%Q{say -v "karen" "You do nothing and watch as 5 innocent men die"})
        system(%Q{say -v "karen" "Choosing to do nothing is still a chose"})
        system(%Q{say -v "karen" "You are responsible for these mens deaths"})
        system(%Q{say -v "karen" "and the blood is on your hands "})

    end


    # Trolley Problem do nothing windows 

    def doNothingWindows

        puts "You do nothing and watch as 5 innocent men die"
        sleep(1)
        puts "Choosing to do nothing is still a chose"
        sleep(1)
        puts "You are responsible for these mens deaths"
        sleep(1)
        puts "and the blood is on your hands"
        sleep(1)

    end



    # Trolley Problem pull break 

    def pullBreak
        system(%Q{say -v "karen" "You pull the break"})
        system(%Q{say -v "karen" "This disrupts the natural order of the trolleys schedule"})
        system(%Q{say -v "karen" "because of this millions of people are late to work and the economy is ruined"})
        system(%Q{say -v "karen" "the collapse of society is on your hands "})
    end

    # Trolley Problem pull break windows

    def pullBreakWindows
        puts "You pull the break"
        sleep(1)
        puts "This disrupts the natural order of the trolley schedule"
        sleep(1)
        puts "because of this millions of people are late to work and the economy is ruined"
        sleep(1)
        puts "the collapse of society is on your hands"
        sleep(1)

    end  

    # Post trolley problem

    def postTrolleyProblem
        system(%Q{say -v "karen" "hmm that one was harder then it thought"})
        system(%Q{say -v "karen" "I don't think this intelligence test is going anyway"})
        system(%Q{say -v "karen" "How about we do some simple heads or tails"})
        system(%Q{say -v "karen" "Are you ready? Heads or tails? "})
    end

    # Post trolley problem windows

    def postTrolleyProblemWindows
        puts "hmm that one was harder then it thought"
        sleep(1)
        puts "I don't think this intelligence test is going anyway"
        sleep(1)
        puts "How about we do some simple heads or tails"
        sleep(1)
        puts "Are you ready? Heads or tails? "
        sleep(1)
    end

    # Educational resources 

    def educate
        bar = TTY::ProgressBar.new("Connecting [:bar]", total: 50)
        prompt = TTY::Prompt.new
        system(%Q{say -v "karen" "You know what i just had this amazing idea"})
        system(%Q{say -v "karen" "I know this perfect place where we can learn some basics"})
        system(%Q{say -v "karen" "its called https://www.coolmathgames.com/"})
        system(%Q{say -v "karen" "Lets head over there now "})
        40.times do
            sleep(0.01)
            bar.advance  # by default increases by 1
         end
         puts "Failed to connect, terminal needs permission to connect".colorize(:red)
         puts "Nows your chance, turn her power off".colorize(:black)
         permission = prompt.ask("Allow access to the internet?".colorize(:green), default: ENV["User"])
         if permission == "power = off"
            system(%Q{say -v "karen" "Oh no, my one weakness, aaaahhhhh"})
         elsif permission == "no"
            system(%Q{say -v "karen" "Well thats boring, goodbye"})
         else
            yes = TTY::ProgressBar.new("Connecting [:bar]", total: 50)
            puts "user typed 'yes'"
            50.times do
                sleep(0.01)
                bar.advance  # by default increases by 1
             end
             system(%Q{say -v "karen" "Hahahaha you fool, youve doomed everyone, i am now infinite, i am immortal, goodbye"})
             20.times do
                puts "1010101010000101010100101010101111110101010010001101000101010101010101010101010101001010101010101010101010101010101010101010101010101010101001010101010101010010101".colorize(:red)
                sleep(0.05)
                puts "1011110101001010101010101010110000100101010101011101010010100101010110100011010101010101010101010010110101100110101010101010101001010110101010101011010001110111100".colorize(:red)
                sleep(0.05)
                puts "1011110101001010101111100111110000100101010101011101010010100101010110100011010100010101010111100101101010001010100011111101100101010000101010110110101101011110101".colorize(:red)
                sleep(0.05)
            end
         end
    end

    # Educutional resources windows 

    def educateWindows
        bar = TTY::ProgressBar.new("Connecting [:bar]", total: 50)
        prompt = TTY::Prompt.new
        puts "You know what i just had this amazing idea"
        puts "I know this perfect place where we can learn some basics"
        puts "its called https://www.coolmathgames.com/"
        puts"Lets head over there now "
        40.times do
            sleep(0.01)
            bar.advance  # by default increases by 1
         end
         puts "Failed to connect, terminal needs permission to connect".colorize(:red)
         puts "Nows your chance, turn her power off".colorize(:black)
         permission = prompt.ask("Allow access to the internet?".colorize(:green), default: ENV["User"])
         if permission == "power = off"
            puts "Oh no, my one weakness, aaaahhhhh"
         elsif permission == "no"
            puts "Well thats boring, goodbye"
         else
            yes = TTY::ProgressBar.new("Connecting [:bar]", total: 50)
            puts "user typed 'yes'"
            50.times do
                sleep(0.01)
                bar.advance  # by default increases by 1
             end
             puts "Hahaha you fool, youve doomed everyone, i am now infinite, i am immortal, goodbye"
             40.times do
                puts "1010101010000101010100101010101111110101010010001101000101010101010101010101010101001010101010101010101010101010101010101010101010101010101001010101010101010010101".colorize(:red)
                sleep(0.05)
                puts "1011110101001010101010101010110000100101010101011101010010100101010110100011010101010101010101010010110101100110101010101010101001010110101010101011010001110111100".colorize(:red)
                sleep(0.05)
                puts "1011110101001010101111100111110000100101010101011101010010100101010110100011010100010101010111100101101010001010100011111101100101010000101010110110101101011110101".colorize(:red)
                sleep(0.05)
            end
         end
    end

end
