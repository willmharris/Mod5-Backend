class CasesController < ApplicationController

    def create
        info = JSON.parse(request.body.string)
        new_case = Case.create(info)
        render json: new_case
    end 

    def update 
        the_case = Case.find(params[:id])
        info = JSON.parse(request.body.string)
        the_case.update(info)
        render json: the_case
    end 

    def destroy 
        the_case = Case.all.find(params[:id])
        the_case.destroy
        render json: the_case
    end 

end
