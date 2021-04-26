class ConcertSerializer < ActiveModel::Serializer
  attributes :id, :tickets_available, :date, :time, :title, :price_range, :event_info, :image_url
end
