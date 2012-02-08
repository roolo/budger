class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.string :name
      t.references :user

      t.timestamps
    end
    add_index :budgets, :user_id

    add_column :items, :budget_id, :integer
    add_index :items, :budget_id
  end
end
