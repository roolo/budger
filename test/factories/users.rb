# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :testing_user, class: User do
    email "test@test.com"
    password "password"
  end

  factory :user do
    email "test@test.com"
    password "password"
  end


end
