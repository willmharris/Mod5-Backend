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
        info = {leads: leads, clients: clients, cases: cases}  
        render json: info 
    end 

end
