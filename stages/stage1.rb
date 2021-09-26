require "tty-prompt"
require_relative "../classes/user.rb"
require_relative "../classes/stage1_dialogue.rb"

# initialize gems

prompt = TTY::Prompt.new

#initialize dialogue

dialogue = Stage1_dialogue.new
dialogue.intro
name = prompt.ask("What's yours?'", default: ENV["User"])
user = User.new(name)

