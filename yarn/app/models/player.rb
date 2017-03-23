class Player < ApplicationRecord

  belongs_to :stories
  has_many :panels
  has_many :choices

end
