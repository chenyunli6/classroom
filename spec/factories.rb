FactoryGirl.define do
  sequence(:email) { |n| "user#{n}@example.com" }

  factory :user do
    email
    password "password"
    password_confirmation { password }
  end

  factory :course do
    description "Couese Description."
    title "Course Title"
    user
  end
end
