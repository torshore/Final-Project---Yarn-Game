class Choice < ApplicationRecord

  belongs_to :panels, optional: true
  belongs_to :players, optional: true
  vatlidates :body_text, length: { maximum: 75 }
  validates :player_id, presence: true


end
