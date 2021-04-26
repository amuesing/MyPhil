class ChangePriceToTooltip < ActiveRecord::Migration[6.1]
  def change
    rename_column :seats, :price, :tooltip
  end
end
