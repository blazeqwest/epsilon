class WelcomeController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
<<<<<<< HEAD
  before_action :authenticate_user! 
=======
  before_action :authenticate_user!
>>>>>>> 61c7288711aa3bc2f0251e955117b14f2a554cb0
  def index
  end
  protect_from_forgery with: :exception
end
