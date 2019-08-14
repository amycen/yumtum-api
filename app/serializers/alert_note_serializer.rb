class AlertNoteSerializer < ActiveModel::Serializer
  attributes :id, :name, :alert_type
  has_many :items
end
