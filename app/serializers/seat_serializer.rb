class SeatSerializer < ActiveModel::Serializer
  # has_many :tickets
  attributes :id, :section, :row, :number, :tooltip, :isReserved, :orientation, :concert_id, :isSelected
end
