class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    def current_user
      @current_musician ||= Musician.find(session[:musician_id]) if session[:musician_id]
    end
    helper_method :current_user, :logged?

    def authorize
      redirect_to '/login' unless current_user
    end

    def logged?
      !current_user.nil?
    end
end
