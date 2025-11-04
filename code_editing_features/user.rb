# frozen_string_literal: true
class User

  attr_accessor :id, :name

  def initialize(id, name)
    @id = id
    @name = name
  end

  def say_hello
    puts "Hello there!"
  end

  def say_goodbye
    puts "Goodbye!"
  end

  def first_user
    if id == 1
      puts "This user is the first user"
    else
      puts "This user is not the first user"
    end
  end

end

class Student < User
  def initialize(year)
    @year = year
  end

end
