class Panel < ApplicationRecord

  belongs_to :stories
  belongs_to :players
  has_many :choices
end
