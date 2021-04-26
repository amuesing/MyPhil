class ChangeTooltipToString < ActiveRecord::Migration[6.1]
  def change
    change_column :seats, :tooltip, :string
  end
end
