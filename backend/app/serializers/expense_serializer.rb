class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :description, :date, :amount
  has_one :budget
end
