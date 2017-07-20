FactoryGirl.define do
  factory :user do
    name { "mr_#{rand(999)}"}
    sequence (:email) {|n| "someguy_#{n}@example.com"}
  end
end