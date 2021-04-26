class AddOrientationColumnToSeats < ActiveRecord::Migration[6.1]
  def change
    add_column :seats, :orientation, :string
  end
end
