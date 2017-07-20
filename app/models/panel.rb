class Panel < ApplicationRecord

  belongs_to :stories, optional: true
  has_many :choices
  has_many :words


end
