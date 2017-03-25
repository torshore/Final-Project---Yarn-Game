class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password, :avatar_url
  has_many :stories
end
