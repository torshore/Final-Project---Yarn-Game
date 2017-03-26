class User < ApplicationRecord

  has_many :stories

  validates_uniqueness_of :email, :username
  validates :email, presence: true
  validates :username, presence: true

end
