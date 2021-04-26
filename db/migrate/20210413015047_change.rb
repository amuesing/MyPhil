class Change < ActiveRecord::Migration[6.1]
  def change
    rename_column :seats, :is_taken?, :is_open
  end
end
