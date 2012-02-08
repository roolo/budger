class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :money_amount
      t.integer :priority
      t.integer :item_type

      t.timestamps
    end
  end
end
