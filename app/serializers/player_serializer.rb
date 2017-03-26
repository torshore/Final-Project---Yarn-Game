class PlayerSerializer < ActiveModel::Serializer

  attributes :id, :story_id, :art, :player_ordinal_number, :name

  belongs_to :stories, optional:true
  has_many :panels
  has_many :choices
end
