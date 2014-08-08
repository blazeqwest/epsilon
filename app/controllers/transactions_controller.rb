class TransactionsController < ApplicationController
  def new
  end

  def can_see?
    transaction = Transaction.find(params[:id])
    account = Account.find(params[:account_id])
    return account.user_id == current_user.id
  end
  
  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.account_id = params[:account_id]
    @transaction.save
    @account = Account.find(params[:account_id])
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
    @account = Account.find(params[:account_id]) unless params[:account_id].nil?
    @transactions = Transaction.where("account_id = ?", params[:account_id]).order(created_at: :desc).paginate(page: params[:page],per_page: 10)
    if params[:tag]
      @transactions_tagged = Transaction.where("account_id = ?", params[:account_id]).tagged_with(params[:tag])
    end
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
        @account = Account.find(params[:account_id])
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
      @account = Account.find(params[:account_id])
      @account.balance = @account.balance - @transaction.amount
      @account.save
      @transaction.destroy
      redirect_to account_transactions_path
    else
      render :status => :forbidden, :text => "Forbidden fruit"
    end
  end

  def tagged
  if params[:tag].present?
    @lol = "tag found"
    @i_see = params
    @transactions = Transaction.all.tagged_with(params[:tag]).order(created_at: :desc).paginate(page: params[:page],per_page: 10)
  else
    @lol = "tag not found" 
    @transactions = Transaction.all.order(created_at: :desc).paginate(page: params[:page],per_page: 10)
  end  
end

  private
    def transaction_params
      params.require(:transaction).permit(:amount, :tag_list)
    end
end
