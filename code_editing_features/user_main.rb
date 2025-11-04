# frozen_string_literal: true
require_relative 'user.rb'

user = User.new "1","John"
user.say_hello
user.say_goodbye

id = user.id
puts id

name=user.name;puts name

if name == "John"
      puts "My name is John"
end