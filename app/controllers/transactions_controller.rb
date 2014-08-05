class TransactionsController < ApplicationController
  def new
  end
  def can_see?
    transaction = Transaction.find(params[:id])
    account = Account.find(params[:account_id])
    acount.user_id == current_user.id
  end
  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.account_id = params[:account_id]
    @transaction.save
    @account = Account.find(4)
    @account.balance = @transaction.amount + @account.balance
    @account.save
    redirect_to @account
  end
  
  def show
    @transaction = Transaction.find(params[:id])
    if can_see?
    else
      render :status => :forbidden, :text => "Forbidden fruit"
    end
  end

  def index
    @account = Account.find(params[:account_id])
    @transactions = Transaction.where("account_id = ?", params[:account_id])
  end

  def edit
    @transaction = Transaction.find(params[:id])
    if can_see?
      @transaction = Transaction.find(params[:id])
    else 
      render :status => :forbidden, :text => "Forbidden fruit"
    end
  end

  def destroy
    @transaction = Transaction.find(params[:id])
    if can_see?
      @transaction.destroy
      redirect_to accounts_transactions_path
    else
      render :status => :forbidden, :text => "Forbidden fruit"
    end
  end

  private
    def transaction_params
      params.require(:transaction).permit(:amount)
    end
end
