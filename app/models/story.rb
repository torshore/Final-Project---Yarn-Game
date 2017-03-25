class Story < ApplicationRecord

  belongs_to :users, optional: true
  has_many :panels
  has_many :players

end
