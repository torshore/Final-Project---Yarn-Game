class ChoiceSerializer < ActiveModel::Serializer
  attributes :id, :panel_id, :path_to, :body_text

  belongs_to :panels, optional: true
end
