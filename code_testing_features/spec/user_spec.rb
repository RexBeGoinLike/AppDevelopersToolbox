require_relative '../../code_editing_features/user.rb'

describe User do
  describe "#initialize" do
    it "creates a user with id and name" do
      user = User.new(1, "Inqre D' Gussi")
      expect(user.id).to eq(1)
      expect(user.name).to eq("Inqre D' Gussi")
    end
  end

  describe "#say_hello" do
    it "prints greeting with user's name" do
      user = User.new(2, "Jaymark")
      expect {user.say_hello}.to output("Hello there! I'm Jaymark\n").to_stdout
    end
  end
end
