class SessionsController < ApplicationController

    def create
        info = JSON.parse(request.body.string)
        session = Session.create(info)
        render json: session
    end 

    def update 
        session = Session.find(params[:id])
        info = JSON.parse(request.body.string)
        session.update(info)
        render json: session
    end 

    def destroy 
        session = Case.all.find(params[:id])
        session.destroy
        render json: session
    end 

end
