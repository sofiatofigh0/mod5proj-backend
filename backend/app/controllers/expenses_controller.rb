class ExpensesController < ApplicationController
    def index
        @expenses = Expense.all
        render json: @expenses, each_serializer: ExpenseSerializer
    end
    
    def show
        @expense = Expense.find(id: params[:id])
        render json: @expense, serializer: ExpenseSerializer
    end
end