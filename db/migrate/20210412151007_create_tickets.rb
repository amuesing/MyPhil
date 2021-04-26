class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.integer :user_id
      t.integer :seat_id
      t.integer :price

      t.timestamps
    end
  end
end
