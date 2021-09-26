require_relative "user.rb"

class Stage1_dialogue 

    def intro
        puts ""
        puts "Welcome to the Coding Tutorial"
        sleep(1)
        puts "I'll be your teacher today, my name is Axel"
        sleep (1.5)
    end

    def variable(name)
        puts "Hello, #{name}"
        sleep(1)
        puts "Let's begin with variables!"
        sleep(1.5)
        puts "A variable is a way of storing data for later use"
        sleep(1.5)
        puts "A variable begins with a descriptive name, followed by equals and then what you want to assign the variable as"
        sleep(2)
        puts "For example: "
        puts "your_name = '#{name}'"
    end

end