class PanelSerializer < ActiveModel::Serializer

  attributes :id, :story_id, :image, :body_text, :player_id

  belongs_to :stories, optional: true
  belongs_to :players, optional: true
  has_many :choices

end
