class BudgetsController < ApplicationController
    def index
        @budgets = Budget.all
        render json: @budgets
    end
    
    def show
        @budget = Budget.find(params[:id])
        render json: @budget
    end

    def create
        @budget = Budget.create(strong_params)
        render json: @budget
     
    end

    def edit
        @budget=Budget.find(params[:id])
     end
     
     def update
         @budget=Budget.find(params[:id])

        @budget.update(strong_params)
        render json: @budget
    end

    def destroy
        @budget = Post.find(params[:id])
        @budget.destroy
        render json: {message: "Budget Deleted"}

        
    end

    def strong_params
        params.require(:budget).permit(:category, :amount, :user_id)
    end

end
