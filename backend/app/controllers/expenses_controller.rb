class ExpensesController < ApplicationController
    def index
        @expenses = Expense.all
        render json: @expenses
    end
    
    def show
        @expense = Expense.find(params[:id])
        render json: @expense
    end

      def create
        @expense = Expense.create(strong_params)
        render json: @expense
     end

    def edit
        @expense=Expense.find(params[:id])
     end
     
     def update
         @expense=Expense.find(params[:id])

        @expense.update(strong_params)
        render json: @expense
    end
    
      def destroy
        @expense = Expense.find(params[:id])
        @expense.destroy
        render json: {message: "Expense Deleted"}
      end
    
    private
  
    def strong_params
      params.require(:expense).permit(:description,:date,:amount,:budget_id)
    end
end