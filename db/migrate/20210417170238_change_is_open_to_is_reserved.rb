class ChangeIsOpenToIsReserved < ActiveRecord::Migration[6.1]
  def change
    rename_column :seats, :is_open, :isReserved
  end
end
