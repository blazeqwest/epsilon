class Transaction < ActiveRecord::Base
  belongs_to :accounts
  belongs_to :user through :accounts
end
