require_relative "user.rb"
require "tty-prompt"
require "colorize"

# Store and handle dialogue in the first stage of the app

class Stage1_dialogue 

    # Handle the introduction of that app

    def intro
        puts ""
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
        sleep(1.5)
        puts "We can simple do: 7 x hours_in_a_day = 168"
        sleep(1.5)
        puts "Another reason variables are so helpful is because they are easy to change!"
        sleep(2.5)
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
        puts "So to find out hour many hours in a week we do 7 x hours_in_a_day = #{7 * hours_in_a_day}"
        sleep(3)
        puts "Notice how some the variable my_name and your_name had quotation marks around them"
        sleep(1)
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
        puts "age = #{user.age}"
        sleep(1)
        puts "Let's get some more data"
        sleep(1)
        user.favouriteColour = prompt.ask("What's your favourite colour?".colorize(:green), default: ENV["User"])
        puts "Awesome so that would look like:"
        sleep(1)
        puts "favourite_colour = '#{user.favouriteColour}'"
        sleep(2)
        puts "Now the reason favourite_color is in quotation marks, is because thats how we tell the computer,"
        sleep(2)
        puts "that it is a 'String' "
        sleep(1.5)
        puts "A string can be any amount of characters wrapped in quotation marks"
        sleep(1.5)
        puts "'This is a String'"
        sleep(1.5)
        puts "'Th1s 1s 4ls0 4 5tring'"
        sleep(1.5)
        puts "This is also a String 123456 --==-- "
        sleep(1.5)
        puts "Another commonly used data type is an Integer"
        sleep(2.5)
        puts "An Integer is any whole number"
        sleep(1.5)
        puts "So that means your_age = #{user.age} would be considered an Integer"
        sleep(2)
        puts "Aslong as the number isn't wrapped in quotation marks it is considered a Integer"
        sleep(2.5)
        puts "24 is an Integer"
        sleep(1.5)
        puts "'24' is a String"
        sleep(1)
        puts "-01283982 is an Integer"
        sleep(1.5)
        puts "'-2' is a String"
        sleep(1)
        puts "See the difference??"
        sleep(2.5)
        puts "Something that commonly gets confused with Integers are Floats"
        sleep(3)
        puts "Floats are similar to Integers but instead of being whole numbers"
        sleep(2)
        puts "They are decimal place numbers"
        sleep(1.5)
        puts "299.1 is a Float"
        sleep(1)
        puts "299 is an Integer"
        sleep(1.5)
        puts "2.0 is a Float"
        sleep(1)
        puts "2 is an Integer"
        sleep(3.5)
        puts "They are similar but not the same"
        sleep(2.5)
        puts "Another common Data type is Boolean"
        sleep(2)
        puts "Boolean just means true ort false -  for example: "
        sleep(1.5)
        afraid = prompt.select("You are afraid of spiders".colorize(:green), %w(True False))

        if afraid == "True"
            user.afraidOfSpiders = true
        else
            user.afraidOfSpiders = false
        end

        sleep(1)
        puts "Awesome so you being afraid of spiders is #{afraid}"
        sleep(2)
    end

    def logicOperators(user)
        prompt = TTY::Prompt.new
        sleep(1)
        puts "Great, now we know the basic's we can pretty much do anything"
        sleep(2)
        puts "Let's make things interesting! How about a game"
        sleep(1)
        puts "It'll be an easy number guessing game"



    end

    def objects(user)
        
    end

end