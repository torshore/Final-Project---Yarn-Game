class StorySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :tagline, :number_of_players

  has_many :panels
  has_many :players
end
