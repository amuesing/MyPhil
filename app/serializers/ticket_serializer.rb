class TicketSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :seat_id
end
