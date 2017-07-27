class Word < ApplicationRecord
  belongs_to :panels, optional: true
end
