# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :budget do
    name "Testing budget"
    user
  end
  
  factory :another_budget, parent: :budget do
    name "Another budget"
  end
end
