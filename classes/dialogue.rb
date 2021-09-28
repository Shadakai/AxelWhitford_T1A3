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

    def numberGuessingGame 
        numberguesser = NumberGuesser.new
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



end