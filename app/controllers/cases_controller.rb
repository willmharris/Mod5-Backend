class CasesController < ApplicationController

    def create
        data = JSON.parse(request.body.string)
        new_case = Case.create(confirmed_location: data["confirmed_location"])
        first_new_user_case = UserCase.create(user_id: data["first_client"]["id"], case_id: new_case.id)
        second_new_user_case = UserCase.create(user_id: data["second_client"]["id"], case_id: new_case.id)
        render json: {addedCase: new_case, firstAddedUserCase: first_new_user_case, secondAddedUserCase: second_new_user_case}
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
