require "tty-prompt"
require "colorize"
require_relative "../classes/user.rb"
require_relative "../classes/dialogue.rb"

# initialize gems

prompt = TTY::Prompt.new

#initialize dialogue

dialogue = Stage1_dialogue.new

dialogue.intro
name = prompt.ask("What's your name?".colorize(:green), default: ENV["User"])
user = User.new(name)

dialogue.variable(user.name)

dialogue.dataTypes(user)

dialogue.logicOperators

dialogue.classes(user)


