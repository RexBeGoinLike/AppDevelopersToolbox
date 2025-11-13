require_relative '../../code_editing_features/user.rb'
require 'stringio'

# Scenario: Create a new user
When("I create a user with id {string} and name {string}") do |id, name|
  @user = User.new(id.to_i, name)
end

Then("the user should have id {int} and name {string}") do |id, name|
  expect(@user.id).to eq(id)
  expect(@user.name).to eq(name)
end

# Scenario: User says hello
Given("I have a user with name {string}") do |name|
  @user = User.new(1, name)
end

When("I ask the user to say hello") do
  @output = capture_stdout { @user.say_hello }
end

Then("I should see {string}") do |expected_output|
  expect(@output.strip).to eq(expected_output)
end

def capture_stdout
  original_stdout = $stdout
  $stdout = StringIO.new
  yield
  $stdout.string
ensure
  $stdout = original_stdout
end
