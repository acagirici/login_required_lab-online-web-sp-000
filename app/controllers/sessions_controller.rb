class SessionsController < ApplicationController
    before_action :require_login
    
    def new
    end

    def create
        if params[:name].nil? || params[:name].empty?
            redirect_to login_path
        else
            session[:name] = params[:name]
            redirect_to '/'
        end    
    end

    def show
    end

    def destroy
        session.delete :name
    end

end
