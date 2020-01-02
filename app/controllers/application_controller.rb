class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    helper_method :logged_in?, :current_user

    private
    def logged_in?
        !!current_user
    end

    def current_user
        return nil unless session[:session_token]
        @current_user ||= User.find_by(session_token: session[:session_token])
    end
    def signin(user)
        @current_user = user
        session[:session_token] = user.reset_session_token!
    end

    def signout
        current_user.try(:reset_session_token!)
        session[:session_token] = nil
    end
    def require_signed_in!
        render json: {errors: ["sign in errors"]} unless current_user
    end
end
