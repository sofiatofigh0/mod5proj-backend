class BudgetSerializer < ActiveModel::Serializer
  attributes :id, :category, :amount
  has_many :expenses
  has_one :user
end

