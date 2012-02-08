module ItemsHelper
  def print_type type_number
    case type_number
      when Item::TYPE_EXPENSE then 'Expense'
      when Item::TYPE_INCOME then 'Income'
    end
  end
end
