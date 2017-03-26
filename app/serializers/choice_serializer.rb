class ChoiceSerializer < ActiveModel::Serializer
  attributes :id, :panel_id, :path_to, :body_text, :player_id

  belongs_to :panels, optional: true
  belongs_to :players, optional: true
end
