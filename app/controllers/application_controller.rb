class ApplicationController < ActionController::Base
private

def current_user_session
  return @current_user_session if defined?(@current_user_session)
  @current_user_session = UserSession.find
end

def current_user
  return @current_user if defined?(@current_user)
  @current_user = current_user_session && current_user_session.user
end

def user_already_authorized
  if current_user
    redirect_to root_path
  end
end

def user_not_unauthorized
  if !current_user
    redirect_to sign_in_path
  end
end

helper_method :current_user_session, :current_user
end
