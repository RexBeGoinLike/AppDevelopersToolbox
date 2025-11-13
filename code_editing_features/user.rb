# frozen_string_literal: true

class User
  attr_accessor :id, :name, :email

  def initialize(id, name, email = nil)
    @id = id
    @name = name
    @email = email
  end

  def say_hello
    puts "Hello there! I'm #{@name}"
  end

  def say_goodbye
    puts "Goodbye from #{@name}!"
  end

  def to_s
    "User ##{@id}: #{@name}"
  end
end

class Student < User
  attr_accessor :year, :major

  def initialize(id, name, year,  major)
    super(id, name)
    @year = year
    @major = major
  end

  def student_info
    "#{@name} - Year: #{@year}, Major: #{@major}"
  end

  def say_hello
    puts "Hello! I'm #{@name}, a #{@year} year student studying #{@major}"
  end
end
