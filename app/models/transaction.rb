class Transaction < ActiveRecord::Base
  validates :amount, presence: true, numericality: true
  validates :account, presence: true

  belongs_to :account
  belongs_to :budget
end
