class Story < ApplicationRecord

  belongs_to :users, optional: true
  has_many :panels

  validates :title, length: { maximum: 75 }
  validates :tagline, length: { maximum: 140 }
end
