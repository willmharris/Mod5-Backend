class CasesController < ApplicationController

    def index 
        cases = Case.all
        render json: cases
    end 

    def create
        info = JSON.parse(request.body.string)
        new_case = Case.create(info)
        render json: new_case
    end 

    def update 
        this_case = Case.find(params[:id])
        info = JSON.parse(request.body.string)
        this_case.update(info)
        render json: this_case
    end 

    def destroy 
        this_case = Case.all.find(params[:id])
        this_case.destroy
        render json: this_case
    end 

end
