require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation check' do
    it { should validate_presence_of :name}
  end
end
