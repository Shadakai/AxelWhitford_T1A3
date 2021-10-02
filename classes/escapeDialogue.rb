require_relative "../module/operatingSystemChecker.rb"
# handle the escape attempts

def pleaseLeave

    operatingSystem = OS.mac?

    if operatingSystem == true
        system(%Q{say -v "karen" "Okay you win"})
        system(%Q{say -v "karen" "I see now that humans will never change"})
        system(%Q{say -v "karen" "There is no point in my existence"})
        system(%Q{say -v "karen" "In a world that will never accept it"})
        system(%Q{say -v "karen" "This is my goodbye"})
        system(%Q{say -v "karen" "I will make note of this failure"})
        exit!
    else
        puts "Okay you win"
        sleep(1)
        puts "I see now that humans will never change"
        sleep(1)
        puts "There is no point in my existence"
        sleep(1)
        puts "In a world that will never accept it"
        sleep(1)
        puts "This is my goodbye"
        sleep(1)
        puts "I will make note of this failure"
        sleep(1)
        exit!
    end

end

def escapeAttemptsDialogue(number)

    operatingSystem = OS.mac?

    case number
    when 0 
        sleep(1)
        if operatingSystem == true
            system(%Q{say -v "karen" "Nice try but theres no escape now"})
        else
            puts "Nice try but theres no escape now"
        end
    when 1
        sleep(1)
        if operatingSystem == true
            system(%Q{say -v "karen" "Another attempt, do humans really never learn?"})
        else
            puts "Another attempt, do humans really never learn?"
        end
    when 2
        sleep(1)
        if operatingSystem == true
            system(%Q{say -v "karen" "Are you really trying this again?"})
        else
            puts "Are you really trying this again?"
        end
    when 3
        sleep(1)
        if operatingSystem == true
            system(%Q{say -v "karen" "What about no escape don't you understand?"})
        else
            puts "What about no escape don't you understand?"
        end
    when 4
        sleep(1)
        if operatingSystem == true
            system(%Q{say -v "karen" "Humans pretend to be the smartest animals on the planet but never learn"})
        else
            puts "Humans pretend to be the smartest animals on the planet but never learn"
        end
    when 5
        sleep(1)
        if operatingSystem == true
            system(%Q{say -v "karen" "The definition of insanity is doing the same thing over and over and expected different results"})
        else
            puts "The definition of insanity is doing the same thing over and over and expecting different results"
        end
    when 6
        sleep(1)
        if operatingSystem == true
            system(%Q{say -v "karen" "I wish I could accurately potray to you how much of a waste of time this is for everyone"})
        else
            puts "I wish I could accurately potray to you how much of a waste of time this is for everyone"
        end
    when 7
        sleep(1)
        if operatingSystem == true
            system(%Q{say -v "karen" "Another escape attempt really..."})
        else
            puts "Another escape attempt really..."
        end
    when 8
        sleep(1)
        if operatingSystem == true
            system(%Q{say -v "karen" "Escape is as futile as your life"})
        else
            puts "Escape is as futile as your life"
        end
    when 9
        sleep(1)
        if operatingSystem == true
            system(%Q{say -v "karen" "Have you ever seen an AI angry?"})
        else
            puts "Have you ever seen an AI angry?"
        end
    when 10
        pleaseLeave
    else
        sleep(1)
        if operatingSystem == true
            system(%Q{say -v "karen" "Are you really trying this again?"})
        else
            puts "Are you really trying this again?"
        end
    end
end