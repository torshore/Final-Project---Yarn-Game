class Player < ApplicationRecord

  belongs_to :stories, optional: true
  has_many :panels
  has_many :choices

end
