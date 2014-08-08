class Account < ActiveRecord::Base
  belongs_to :user
  has_many :transactions
  belongs_to :account
  validates :balance,:user_id, presence: true, numericality: true
  validates :user, presence: true
  validates :name, presence: true, length: {minimum: 3}
end
