class UserCasesController < ApplicationController
    def update 
        user_case = UserCase.find(params[:id])
        data = JSON.parse(request.body.string)
        user_case.update(data)
        render json: user_case
    end 
end
