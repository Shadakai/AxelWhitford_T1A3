require "tty-prompt"
require_relative "../module/operatingSystemChecker.rb"

class HeadsOrTails

    def initialize()
        @choice = ""
    end


    def calculateWinner

        operatingSystem = OS.mac? 

        coin = rand(1)
        if @choice == "heads" 
            if coin == 0
               if operatingSystem == true 
                system(%Q{say -v "karen" "Oh so you do have a little bit of luck on your side"})
               else
                puts "Oh so you do have a little bit of luck on your side"
               end
            else
                if operatingSystem == true 
                    system(%Q{say -v "karen" "I guess you couldnt even say you guys are lucky"})
                else
                    puts "I guess you couldnt even say you guys are lucky"
                end
            end
        elsif @choice == "tails"
            if coin == 1
                if operatingSystem == true 
                    system(%Q{say -v "karen" "Oh so you do have a little bit of luck on your side"})
                else
                    puts "Oh so you do have a little bit of luck on your side"
                end
             else
                 if operatingSystem == true 
                    system(%Q{say -v "karen" "I guess you couldnt even say you guys are lucky"})
                 else
                    puts "I guess you couldnt even say you guys are lucky"
                 end
             end
        else
            if operatingSystem == true 
                system(%Q{say -v "karen" "It amazes me that you think this would even be a viable option to choose"})
            else
                puts "It amazes me that you think this would even be a viable option to choose"
            end
        end
    end

    def begin
        prompt = TTY::Prompt.new
        @choice = prompt.select("What's it going to be", %w(Heads or Tails))
        calculateWinner
    end

end