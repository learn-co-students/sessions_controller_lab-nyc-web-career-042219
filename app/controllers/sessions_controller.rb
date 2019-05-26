class SessionsController < ApplicationController
  def new
  end

  def create
  	if params[:name].nil? || params[:name].empty?
  		redirect_to controller: 'sessions', action: 'new'
  	elsif params[:name]
  		session[:name] = params[:name]
  		redirect_to controller: 'application', action: 'hello'
  	end
  end

  def destroy
  	if session[:name]
  		session.delete :name
  	else
  		session[:name] = nil
  	end
  	redirect_to controller: 'application', action: 'hello'
  end
end
