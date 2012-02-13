# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    name "Item"
    money_amount "9.99"
    priority 1
    budget
  end

  factory :expense, parent: :item do
    item_type Item::TYPE_EXPENSE
  end

  factory :income, parent: :item do
    item_type Item::TYPE_INCOME
  end
end
