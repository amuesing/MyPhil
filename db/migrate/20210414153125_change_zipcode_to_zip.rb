class ChangeZipcodeToZip < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :zipcode, :zip
  end
end
