# frozen_string_literal: true

RSpec.describe User, type: :model do
  let(:user) { FactoryGirl.build(:user) }

  context 'with validation' do
    it 'is valid factory' do
      expect(user.valid?).to be_truthy
    end

    it 'checks empty name' do
      user.name = nil
      user.valid?
      expect(user.errors[:name]).not_to be_empty
    end

    it 'checks empty email' do
      user.email = nil
      user.valid?
      expect(user.errors[:email]).not_to be_empty
    end
  end
end
