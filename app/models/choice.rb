class Choice < ApplicationRecord

  belongs_to :panels, optional: true
  belongs_to :players, optional: true
  validates :body_text, length: { maximum: 75 }
  validates :player_id, presence: true


end
