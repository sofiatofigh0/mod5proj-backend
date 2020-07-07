class CreateBudgets < ActiveRecord::Migration[6.0]
  def change
    create_table :budgets do |t|
      t.string :category
      t.integer :amount
      t.integer :user_id
      t.timestamps
    end
  end
end
