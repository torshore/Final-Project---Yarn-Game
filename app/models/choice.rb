class Choice < ApplicationRecord

  belongs_to :panels, optional: true
  belongs_to :players, optional: true


end
