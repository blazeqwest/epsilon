class TransactionsController < ApplicationController
  def new
  end

  def can_see?
    transaction = Transaction.find(params[:id])
    account = Account.find(params[:account_id])
    return account.user_id == current_user.id
  end
  
  def create
    @transaction = Transaction.new(transaction_params.merge(budget_id: params[:transaction][:budget]))
    @transaction.account = default_account
    @transaction.save
    @default_account.balance = @transaction.amount + @default_account.balance
    @default_account.save
    redirect_to @default_account
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
    @transactions = Transaction.where("account_id = ?", params[:account_id]).order(created_at: :desc).paginate(page: params[:page],per_page: 10)
  end
  
  def self.unsolved(params)
    order('created_at DESC').where(solved: false).paginate(page: params[:page],per_page: 3)
  end
  
  def edit
    @transaction = Transaction.find(params[:id])
    if can_see?
      @transaction = Transaction.find(params[:id])
    else 
      render :status => :forbidden, :text => "Forbidden fruit"
    end
  end

  def update
    if can_see?
      @transaction = Transaction.find(params[:id])
      if @transaction.amount == params[:transaction][:amount]
        redirect_to account_transactions_path
      else
        @account = default_account
        @account.balance = @account.balance - @transaction.amount + params[:transaction][:amount].to_f
        @account.save
        @transaction.amount = params[:transaction][:amount] 
        @transaction.save
        redirect_to account_transactions_path
      end
    else
      render :status => :forbidden, :text => "Forbidden fruit"
    end
  end

  def destroy
    @transaction = Transaction.find(params[:id])
    if can_see?
      @account = default_account
      @account.balance = @account.balance - @transaction.amount
      @account.save
      @transaction.destroy
      redirect_to account_transactions_path
    else
      render :status => :forbidden, :text => "Forbidden fruit"
    end
  end

  private
    def transaction_params
      params.require(:transaction).permit(:amount, :budget_id)
    end
end
