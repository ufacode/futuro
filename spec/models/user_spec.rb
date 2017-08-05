#require 'rails_helper'
#require 'spec_helper'

RSpec.describe User, type: :model do
  #it "validates the name its not empty" do
    #user = FactoryGirl.create(:user)
    #user.valid?
    #user.errors[:name].should be_empty
  #end


  subject { FactoryGirl.create(:user) }

 context 'with validation' do
   it 'checks empty name' do
     subject.name = nil
     subject.valid?
     expect(subject.errors[:name].count).to be > 0
   end

   it 'checks empty email' do
     subject.email = nil
     subject.valid?
     expect(subject.errors[:email].count).to be > 0
   end
 end
end
