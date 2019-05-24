class SessionsController < ApplicationController

    def new
    
    end

    # def create
    #     if session [:name]
    #         session[:name] = params[:name]
    #         redirect_to home_path
    #     elsif params[:name] = nil
    #         redirect_to new_path
    #     else
    #         redirect_to new_path
    #     end
    # end

    def create
        if params[:name] == "" || params[:name] == nil
            redirect_to '/login'
        else
            session[:name] = params[:name]
            redirect_to '/'
        end
    end

    def destroy
        session.delete :name
        redirect_to '/'
    end

end
