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

end
