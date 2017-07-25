require 'rails_helper'
require 'spec_helper'

describe User do
  #it "validates the name its not empty" do
    #user = FactoryGirl.create(:user)
    #user.valid?
    #user.errors[:name].should be_empty
  #end
  before    do
    @user = User.new(name: "Example User", email: "user@example.com")
  end

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }

  it { should be_valid }

  describe "when name is not present" do
    before { @user.name = " " }
    it { should_not be_valid }
  end
end
