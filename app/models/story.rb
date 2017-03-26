class Story < ApplicationRecord

  belongs_to :users, optional: true
  has_many :panels
  has_many :players

  validates :title, :number_of_players, presence: true
  validates :title, length: { maximum: 75 }
  validates :tagline, length: { maximum: 140 }
  validates :number_of_players, numericality: { less_than: 5}

end
