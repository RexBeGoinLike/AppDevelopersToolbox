require_relative '../../code_editing_features/user.rb'

def process_users
  users = [
    User.new(1, "Inqre D' Gussi"),
    User.new(2, "Desmond"),
    User.new(2, "RJ Mendoza")
  ]

  puts "DEBUG: Processing #{users.length} users"

  users.each_with_index do |user, index|
    puts "DEBUG: User #{index + 1} - ID: #{user.id}, Name: #{user.name}"
  end
end

process_users
