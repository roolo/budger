class Item < ActiveRecord::Base
  attr_accessible :item_type, :name, :money_amount, :priority

  validates_presence_of :name
  validates_presence_of :item_type
  validates_presence_of :budget

  belongs_to :budget


  TYPE_EXPENSE = 1
  TYPE_INCOME = 2
end
