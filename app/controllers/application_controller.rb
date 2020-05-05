class ApplicationController < ActionController::API

    def info 
        users = User.all
        leads = []
        clients = []
        users.each { |user| 
            if (user.account_type == 1)
                leads.push(user) 
            elsif (user.account_type == 2)
                clients.push(user)
            end 
        }
        cases = Case.all 
        sessions = Session.all 
        user_cases = UserCase.all 
        info = {leads: leads, clients: clients, cases: cases, sessions: sessions, user_cases: user_cases}  
        render json: info 
    end 

    def login
        data = JSON.parse(request.body.string)
        user = User.find_by(email: data["email"])
        user = user.try(:authenticate, data["password"])
        render json: user
    end 

end
