class AccountsController < ApplicationController
  
  def new
  end
  
  def create
    @account = Account.new(account_params)
    @account.user_id = current_user.id
    @account.save
    redirect_to @account
  end
  
  def show
    @account = Account.find(params[:id])
    if @account.user_id == current_user.id
    else
      render :status => :forbidden, :text => "Forbidden fruit"
    end
  end

  def index
    @accounts = Account.where("user_id = ?", current_user.id)
  end

  def edit
    @account = Account.find(params[:id])
    if @account.user_id == current_user.id
      @account = Account.find(params[:id])
    else 
      render :status => :forbidden, :text => "Forbidden fruit"
    end
  end

  def destroy
    @account = Account.find(params[:id])
    if @account.user_id == current_user.id
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

end
