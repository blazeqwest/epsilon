class AccountsController < ApplicationController

  before_filter :get_account, only: [:show, :edit, :update, :destroy, :make_main]
  
  def new
  end
  
  def create
    @account = Account.new(account_params)
    @account.user_id = current_user.id
    @account.save
    redirect_to @account
  end
  
  def show
    render :status => :forbidden, :text => "Forbidden fruit" unless @account
  end

  def index
    @accounts = current_user.accounts
  end

  def edit
    render :status => :forbidden, :text => "Forbidden fruit" unless @account
  end

  def update
    @account.update(account_params)
    redirect_to accounts_path
  end

  def destroy
    if @account
      @account.destroy
      redirect_to accounts_path
    else
      render :status => :forbidden, :text => "Forbidden fruit"
    end
  end

  def make_main
    account = current_user.accounts.find(params[:format])
    if account
      current_user.accounts.where.not(id: account.id).update_all(main: false)
      account.update(main: true)
    end
  end

  private
    def account_params
      params.require(:account).permit(:name, :balance)
    end

    def get_account
      @account = current_user.accounts.find(params[:id])
    end

end
