class ApplicationController < ActionController::Base

  def current_user
    @current_user = 'test'
  end
  helper_method :current_user

end
