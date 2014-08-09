class User < ActiveRecord::Base
  has_many :accounts, dependent: :destroy
  has_many :transactions, through: :accounts
  has_many :budgets

  validate :email, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
