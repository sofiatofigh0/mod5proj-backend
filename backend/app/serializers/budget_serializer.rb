
class BudgetSerializer < ActiveModel::Serializer
    attributes :id, :category, :amount, :user_id
    has_many :expenses
  end
  