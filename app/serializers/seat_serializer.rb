class SeatSerializer < ActiveModel::Serializer
  # has_many :tickets
  attributes :id, :section, :row, :number, :concert_id, :is_open, :concert_id
end
