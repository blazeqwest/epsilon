class Budget < ActiveRecord::Base
	belongs_to :user
	has_many :transactions

	validates :title, presence: true
	validates :amount, presence: true

end
