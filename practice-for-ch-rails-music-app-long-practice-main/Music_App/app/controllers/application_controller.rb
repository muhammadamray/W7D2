class ApplicationController < ActionController::Base

    helper_method :current_user, :logged_in?

    private 

    def login!(user)
        session[:session_token] = user.reset_session_token!
    end 

    def logged_in? 
        !!current_user 
    end 

    def cuurent_user
        @current_user ||= User.find_by(session_token: session[:session_token])
    end 





end
