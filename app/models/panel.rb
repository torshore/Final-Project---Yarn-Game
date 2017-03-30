class Panel < ApplicationRecord

  belongs_to :stories, optional: true
  has_many :choices

  validates :story_id, presence: true
  validates :body_text, length: { maximum: 2000 }
end
