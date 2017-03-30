class Choice < ApplicationRecord

  belongs_to :panels, optional: true
  validates :body_text, length: { maximum: 75 }


end
