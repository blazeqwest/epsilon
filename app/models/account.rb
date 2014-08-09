class Account < ActiveRecord::Base
  validates :balance,:user_id, presence: true, numericality: true
  validates :user, presence: true
  validates :name, presence: true, length: {minimum: 3}

  belongs_to :user
  has_many :transactions
end
