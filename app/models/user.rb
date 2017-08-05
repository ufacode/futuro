class User < ApplicationRecord
  validates :name, :email, presence: true
end

# == Schema Information
#
# Table name: users
#
#  created_at :datetime         not null
#  email      :string(255)
#  id         :integer          not null, primary key
#  name       :string(255)
#  updated_at :datetime         not null
#
