class UsersController < ApplicationController
    def index
        users = User.all
        render json: users, include: [:username]
    end
    
    def show
        user = User.find(id: params[:id])
        render json: user, include: [:username]
    end
end