class AddIsTakenToSeat < ActiveRecord::Migration[6.1]
  def change
    add_column :seats, :is_taken?, :boolean
  end
end
