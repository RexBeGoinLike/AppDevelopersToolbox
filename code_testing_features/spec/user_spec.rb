# frozen_string_literal: true
# spec/models/user_spec.rb
require 'rspec/autorun'

describe User do
  describe '#valid_email?' do
    it 'returns true for valid email' do
      user = User.new('John', 'john@example.com')
      expect(user.valid_email?).to be true
    end

    it 'returns false for invalid email' do
      user = User.new('John', 'invalid-email')
      expect(user.valid_email?).to be false
    end
  end
end






