class Account < ActiveRecord::Base
  belongs_to :users
  has_many :transactions
end
