class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end
    
    def show
        user = User.find(id: params[:id])
        render json: user, include: [:username]
    end

    def create
        @user = User.create(strong_params)

        render json: @user

      end
    
      private
    
      def strong_params
        params.require(:user).permit(:username, :password_digest)
      end

end