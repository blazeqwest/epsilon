class Transaction < ActiveRecord::Base
  acts_as_taggable
  scope :by_join_date, order("created_at DESC")
  belongs_to :account
  validates :amount,:account_id, presence: true, numericality: true
  validates :account, presence: true
end
