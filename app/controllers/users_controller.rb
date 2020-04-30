class UsersController < ApplicationController

    def create
        info = JSON.parse(request.body.string)
        new_user = User.create(info)
        render json: new_user
    end 

    def update 
        user = User.find(params[:id])
        info = JSON.parse(request.body.string)
        user.update(info)
        render json: user
    end 

    def destroy 
        user = User.all.find(params[:id])
        user.destroy
        render json: user
    end 

end