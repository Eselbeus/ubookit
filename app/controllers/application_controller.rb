class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    def current_user
      @current_musician ||= Musician.find(session[:musician_id]) if session[:musician_id]
    end
    def current_venue
      @current_venue ||= Venue.find(session[:venue_id]) if session[:venue_id]
    end
    helper_method :current_user, :logged_user?, :current_venue, :logged_venue?

    def authorize
      redirect_to '/login' unless current_user
    end

    def logged_user?
      !current_user.nil?
    end

    def logged_venue?
      !current_venue.nil?
    end
end
