class SessionsController < ApplicationController
  skip_before_action :authenticate
  
  def create
    @internaluser = Internaluser.find_by(email: params[:email])
    if @internaluser.present?
      if @internaluser.authenticate(params[:password])
        session[:internaluser_id] = @internaluser.id
        redirect_to root_url, notice: 'Successfully logged in'
      else
        redirect_to root_url, alert: 'Invalid Password'
      end
    else
      redirect_to root_url, alert: 'Nobody with that email address'
    end
  end
  
  def destroy
    session[:internaluser_id] = nil
    redirect_to root_url, notice: "You're now logged-out"
  end
  
  

end