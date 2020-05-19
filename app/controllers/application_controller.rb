# @author Kevin Higgins
# this class uses some code, with modifications, from this tutorial https://gist.github.com/thebucknerlife/10090014
class ApplicationController < ActionController::Base

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
  def authorise
    if !current_user
      flash[:notice] = 'Only signed-in users may modify or create records.'
      redirect_to signin_path
    end
  end
end
