require "tty-prompt"
require "tty-progressbar"

# Initialize gems

prompt = TTY::Prompt.new
bar = TTY::ProgressBar.new("Loading Tutorial [:bar]", total: 50)

# Welcome the user

puts "



================================================================================

888       888 8888888888 888      .d8888b.   .d88888b.  888b     d888 8888888888 
888   o   888 888        888     d88P  Y88b d88P\" \"Y88b 8888b   d8888 888        
888  d8b  888 888        888     888    888 888     888 88888b.d88888 888        
888 d888b 888 8888888    888     888        888     888 888Y88888P888 8888888    
888d88888b888 888        888     888        888     888 888 Y888P 888 888        
88888P Y88888 888        888     888    888 888     888 888  Y8P  888 888        
8888P   Y8888 888        888     Y88b  d88P Y88b. .d88P 888   \"   888 888        
888P     Y888 8888888888 88888888 \"Y8888P\"   \"Y88888P\"  888       888 8888888888 

================================================================================



"

# Prompt the user to start the tutorial 

selected = prompt.select("Welcome to the programming tutorial, would you like to proceed?", %w(Start Exit))

# Display a fake loading bar to commence tutorial/game

if selected == "Start" 
    puts ""
    puts "Tutorial commencing: "
    50.times do
        sleep(0.05)
        bar.advance  # by default increases by 1
      end
      #IDK why but if I required this at the top it would run first, this is the only way i found that would run it once the loading was done
      require_relative "../stages/stage1.rb"
      
else

    # Farewell the user if they decide to leave

    puts "

    ================================================================================
    
    .d8888b.   .d88888b.   .d88888b.  8888888b.         888888b. Y88b   d88P 8888888888 
    d88P  Y88b d88P\" \"Y88b d88P\" \"Y88b 888  \"Y88b        888  \"88b Y88b d88P  888        
    888    888 888     888 888     888 888    888        888  .88P  Y88o88P   888        
    888        888     888 888     888 888    888        8888888K.   Y888P    8888888    
    888  88888 888     888 888     888 888    888        888  \"Y88b   888     888        
    888    888 888     888 888     888 888    888 888888 888    888   888     888        
    Y88b  d88P Y88b. .d88P Y88b. .d88P 888  .d88P        888   d88P   888     888        
     \"Y8888P88  \"Y88888P\"   \"Y88888P\"  8888888P\"         8888888P\"    888     8888888888

     ================================================================================
    
    "
end