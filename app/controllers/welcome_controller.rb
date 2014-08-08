class WelcomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @accounts = Account.where('user_id = ?', current_user.id)
    @balance = 0
    @accounts.each do |account|
      @balance += account.balance
    end
  end
end
