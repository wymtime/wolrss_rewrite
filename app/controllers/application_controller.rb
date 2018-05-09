class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # testing only
  # protect_from_forgery with: :null_session

  helper_method :signed_in?, :current_user

  include ApplicationHelper
end
