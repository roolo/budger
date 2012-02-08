class Budget < ActiveRecord::Base
  belongs_to :user
  has_many :expenses, class_name: 'Item', conditions:  ["item_type = ?", Item::TYPE_EXPENSE]
  has_many :incomes, class_name: 'Item', conditions:  ["item_type = ?", Item::TYPE_INCOME]

  after_initialize :default_params

  def self.find_owned_by user
    self.find_all_by_user_id user.id
  end

  def default_params
    self.name ||= Date.current
  end

end
