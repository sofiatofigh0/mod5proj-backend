class UsersController < ApplicationController
    def index
        users = User.all
        render json: users, include: [:username]
    end
    
    def show
        user = User.find(id: params[:id])
        render json: user, include: [:username]
    end

    def create
        @user = User.new(strong_params)
    
        if @user.valid?
         @user.save
         render json: @user
        else
          render json: {error: "something went wrong!"}
        end
      end
    
      private
    
      def strong_params
        params.permit(:username, :password)
      end

end