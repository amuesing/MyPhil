class AddConcertIdToSeat < ActiveRecord::Migration[6.1]
  def change
    add_column :seats, :concert_id, :integer
  end
end
