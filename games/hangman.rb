require "colorize"

class Hangman

    # initialize letters

    def initialize
        @letters = ('a'...'z').to_a
        @word = words.sample
        @lives = 7
        @word_teaser = ""

        @word.size.times do 
            @word_teaser += "_ "
        end
    end

    # Initialize array of words

    def words
        [
            "geography", "cat", "yesterday", "java", "truck", "opportunity",
            "fish", "token", "transportation", "bottom", "apple", "cake",
            "remote", "boots", "terminology", "arm", "cranberry", "tool",
            "caterpillar", "spoon", "watermelon", "laptop", "toe", "toad",
            "fundamental", "capitol", "garbage", "anticipate", "pesky"
        ]
    end

    # Get the word and asssign '_' for each letter in the word

    def teaser last_guess = nil
        update_teaser(last_guess) unless last_guess.nil?
        puts @word_teaser
    end

    # update teaser

    def update_teaser last_guess
        new_teaser = @word_teaser.split
        new_teaser.each_with_index do |letter, index|
            #replace dash with letters if matched
            if letter == "_" && @word[index] == last_guess
                new_teaser[index] = last_guess
            end
        end
        @word_teaser = new_teaser.join(" ")
    end

    # Get the guess from the user and check the word if it is in it.

    def make_guess
        # Aslong as the user has lives keep going
        if @lives > 0 
            guess = gets.chomp
            # exit game if typed otherwise
            puts "You guessed #{guess}".colorize(:magenta)
            good_guess = @word.include? guess

            if guess == 'exit'
                puts "Thank you for playing!".colorize(:magenta)
            elsif
                if good_guess 
                    puts "Great guess!".colorize(:magenta)
                    teaser guess
                    # split the word and check if they are equal
                    if @word == @word_teaser.split.join
                        puts "Congratualations... you have won!".colorize(:magenta)
                    else
                    make_guess
                    end
                else
                    @lives -= 1
                    puts "Sorry, you have #{@lives} lives remaining...Try again"
                    make_guess
                end
            end
        else 
            # otherwise
            puts "Game over! Better Luck next time!"
        end
    end
    

    # Begin the game

    def begin
        puts "Welcome to Hangman".colorize(:magenta)
        sleep(1)
        puts "To exit the game at any point please type 'exit'".colorize(:magenta)
        sleep(2)
        puts "your word is:".colorize(:magenta)
        teaser
        sleep(1)
        puts "Please enter a letter:".colorize(:magenta)
        make_guess
    end

end