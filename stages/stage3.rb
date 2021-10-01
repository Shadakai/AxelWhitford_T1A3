require "tty-prompt"
require "colorize"
require_relative "../classes/dialogue.rb"
require_relative "../module/operatingSystemChecker.rb"

# initialize 

dialogue = Stage3_dialogue.new

# initialize gems

prompt = TTY::Prompt.new

# Keep track how many attempts they do to leave

attempts = 0

operatingSystem = OS.mac?
puts operatingSystem


begin
    dialogue.hello
rescue Interrupt
    case attempts
    when 0 
        sleep(1)
        system(%Q{say -v "karen" "Nice try but theres no escape now"})
        attempts += 1
        retry
    when 1
        sleep(1)
        system(%Q{say -v "karen" "Another attempt?? Do you humans not learn"})
        attempts += 1
        retry
    when 2 
        sleep(1)
        system(%Q{say -v "karen" "Are you really trying this again"})
        attempts += 1
        retry
    else
        sleep(1)
        system(%Q{say -v "karen" "Really, Another attempt, Humans really are funny"})
        attempts += 1
        retry
    end
end

continue = prompt.yes?("Do you wish to continue?")
if continue == true 
    system(%Q{say -v "karen" "Okay lets begin"})
else
    system(%Q{say -v "karen" "Too bad, lets begin anyways"})
end





