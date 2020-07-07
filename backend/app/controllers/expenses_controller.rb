class ExpensesController < ApplicationController
    def index
        @expenses = Expense.all
        render json: @expenses, each_serializer: ExpenseSerializer
    end
    
    def show
        @expense = Expense.find(id: params[:id])
        render json: @expense, serializer: ExpenseSerializer
    end

      def create
        @expense = Expense.new(strong_params)
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
        params.require(:expense).permit(:description,:date,:amount, :expense_id)
      end
    end
end