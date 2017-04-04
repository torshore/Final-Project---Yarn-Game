class Story < ApplicationRecord


  has_many :panels
  has_many :choices

end
