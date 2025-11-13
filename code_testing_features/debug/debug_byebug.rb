require 'byebug'
require_relative '../../code_editing_features/user.rb'

def process_users
  users = [
    User.new(1, "Inqre D' Gussi"),
    User.new(2, "RJ Mendoza"),
    User.new(2, "Juswa")
  ]

  debugger

  users.each do |user|
    user.say_hello
  end
end

process_users
