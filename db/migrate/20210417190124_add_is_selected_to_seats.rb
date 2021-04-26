class AddIsSelectedToSeats < ActiveRecord::Migration[6.1]
  def change
    add_column :seats, :isSelected, :boolean
  end
end
