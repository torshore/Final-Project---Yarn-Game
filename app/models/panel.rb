class Panel < ApplicationRecord

  belongs_to :stories, optional: true
  belongs_to :players, optional: true
  has_many :choices
end
