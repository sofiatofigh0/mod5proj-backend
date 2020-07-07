class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.belongs_to :budget, null: false, foreign_key: true
      t.string :description
      t.date :date
      t.integer :amount

      t.timestamps
    end
  end
end
