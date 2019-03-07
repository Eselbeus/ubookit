class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    def current_user
      if session[:musician_id]
        @current_musician ||= Musician.find(session[:musician_id])
      elsif session[:venue_id]
        @current_venue ||= Venue.find(session[:venue_id])
      end
    end
  
    helper_method :current_user, :logged_user?

    def authorize
      redirect_to '/login' unless current_user
    end

    def logged_user?
      !current_user.nil?
    end

end
