module ItemsHelper
  def print_by_type type_code, options
    case type_code
      when Item::TYPE_EXPENSE then options[type_code-1]
      when Item::TYPE_INCOME then options[type_code-1]
    end
  end
end
