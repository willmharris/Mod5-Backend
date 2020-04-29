class UsersController < ApplicationController

    def index 
        users = User.all 
        payload = []
        if (params[:type] == "leads")
            payload = users.select {|user| user.account_type == 1}
        elsif (params[:type] == "clients")
            payload = users.select {|user| user.account_type == 2}
        end 
        render json: payload
    end 

    def create
        info = JSON.parse(request.body.string)
        new_user = User.create({
            first_name: info["firstName"], 
            last_name: info["lastName"],
            email: info["email"],
            account_type: 1
        })
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