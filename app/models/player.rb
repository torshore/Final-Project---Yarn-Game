class Player < ApplicationRecord

  belongs_to :stories, optional: true
  has_many :panels
  has_many :choices

  validates :story_id, presence: true
  validates :player_ordinal_number, presence: true
  validates :name, length: {maximum: 30}
end
