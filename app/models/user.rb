class User < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :transactions

  validates :email, :presence => true
end
