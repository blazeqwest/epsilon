class Transaction < ActiveRecord::Base
  belongs_to :account
  validates :amount,:account_id, presence: true, numericality: true
  validates :account, presence: true
end
