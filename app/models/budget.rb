class Budget < ActiveRecord::Base
  belongs_to :user
  has_many :expenses, class_name: 'Item', conditions:  ["item_type = ?", Item::TYPE_EXPENSE]
  has_many :incomes, class_name: 'Item', conditions:  ["item_type = ?", Item::TYPE_INCOME]

  after_initialize :default_params

  def default_params
    self.name ||= Date.current
  end

end
