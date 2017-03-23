class Story < ApplicationRecord

  belongs_to :users
  has_many :panels
  has_many :players

end
