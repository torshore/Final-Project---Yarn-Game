class StorySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :tagline

  has_many :panels
end
