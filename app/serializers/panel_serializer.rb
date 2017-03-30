class PanelSerializer < ActiveModel::Serializer

  attributes :id, :story_id, :image, :body_text

  belongs_to :stories, optional: true
  has_many :choices

end
