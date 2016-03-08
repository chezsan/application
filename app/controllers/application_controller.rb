class ApplicationController < ActionController::Base
  before_action :authenticate
  helper_method :current_internaluser
  
  def authenticate
    if current_internaluser.nil?
      render text: "Not authorized!!!"
      return
    end
  end
  
  def current_internaluser
    Internaluser.find_by(id: session[:internaluser_id])
  end
end