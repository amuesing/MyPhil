class CreateConcerts < ActiveRecord::Migration[6.1]
  def change
    create_table :concerts do |t|
      t.integer :tickets_available
      t.string :date
      t.string :time
      t.string :title
      t.string :price_range
      t.string :event_info
      t.string :image_url

      t.timestamps
    end
  end
end
