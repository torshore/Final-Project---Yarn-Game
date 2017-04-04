class Choice < ApplicationRecord

  belongs_to :panels, optional: true
  belongs_to :stories, optional: true



end
