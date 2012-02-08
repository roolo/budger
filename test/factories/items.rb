# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    name "MyString"
    money_amount "9.99"
    priority 1
    type 1
  end
end
