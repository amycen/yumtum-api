class AlertNoteSerializer < ActiveModel::Serializer
  attributes :id, :name, :type
  has_many :items
end
