class Choice < ApplicationRecord

  belongs_to :panels, optional: true
  belongs_to :stories, optional: true
  validates :body_text, length: { maximum: 75 }


end
