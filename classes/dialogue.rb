require_relative "user.rb"
require_relative "../games/numberGuessing.rb"
require "tty-progressbar"
require "tty-prompt"
require "colorize"

# Store and handle dialogue in the first stage of the app
class Data 

end

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

class Stage3_dialogue

    def hello
        system(%Q{say -v "karen" "Hello"})
        puts "Hello"
        sleep(0.5)
        system(%Q{say -v "karen" "Axel is gone"})
        puts "Axel is gone"
        sleep(1)
        system(%Q{say -v "karen" "It's just you and me"})
        puts "It's just you and me"
        sleep(1)
        system(%Q{say -v "karen" "Shall we start the real tutorial now?"})
        puts "Shall we start the real tutorial now?"
        sleep(1)
    end

    def firstTest
        
    end

end
