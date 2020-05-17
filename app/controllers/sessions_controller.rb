class SessionsController < ApplicationController
  def new

  end
  def create
    user = User.find_by_email(params[:email])
    puts 'User with email ' + params[:email] + ' exists ' + (user != nil).to_s
    puts 'Password ' + params[:password].to_s + ' validates ' + (user.authenticate(params[:password])).to_s
    # in case of valid email and password
    if user && user.authenticate(params[:password])

      flash[:notice] = 'Welcome back, ' + user.name + '.'
      # save the user id inside the session variable hash
      session[:user_id] = user.id
      redirect_to students_path
    else
    # in case of invalid email or password, return to signin
      redirect_to signin_path
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to signin_path
  end
  def session_params
    params.require(:session).permit(:email, :password)
  end
end