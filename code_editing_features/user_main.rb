require_relative 'user.rb'

user = User.new "1","John","2240488@slu.edu.ph"
      user.say_hello
user.say_goodbye

name=user.name;puts name

if name == "John";puts "My name is John"
end

def badMethod; puts "hi" end