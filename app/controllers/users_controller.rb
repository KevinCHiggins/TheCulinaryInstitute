# @author Kevin Higgins
# this class uses some code, with modifications, from this tutorial https://gist.github.com/thebucknerlife/10090014
class UsersController < ApplicationController
  def new
    @user = User.new # this object is not used in view, but exists so view can poll it in case the view has been re-rendered due to an error
    # in which case the @user would actually be the user with errors that wasn't able to be created, built in the create method 
  end
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        session[:user_id] = @user.id
        format.html { redirect_to students_path, notice: 'Sign-up successfully completed.' } # treat the student view as the home page
        #format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        #format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end  
end