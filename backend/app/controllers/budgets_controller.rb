class BudgetsController < ApplicationController
    def index
        @budgets = Budget.all
        render json: @budgets, each_serializer: BudgetSerializer
    end
    
    def show
        @budget = Budget.find(id: params[:id])
        render json: @budget, serializer: BudgetSerializer
    end
end
