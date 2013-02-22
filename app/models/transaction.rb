class Transaction < ActiveRecord::Base
  attr_accessible :description, :transaction_date
  belongs_to :user

  validates :description, :presence => true
  validates :transaction_date, :presence => true
  validates :user, :presence => true
end
