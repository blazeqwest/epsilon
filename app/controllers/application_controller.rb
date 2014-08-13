class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :default_account

  def default_account
  	@default_account = current_user.accounts.where(main: true).take
  end
end
