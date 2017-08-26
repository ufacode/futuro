class Blog < ApplicationRecord
  belongs_to :user
end

# == Schema Information
#
# Table name: blogs
#
#  alias      :string(255)
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  name       :string(255)
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_blogs_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
