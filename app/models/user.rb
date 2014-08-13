class User < ActiveRecord::Base
  has_many :accounts

  validate :email, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
