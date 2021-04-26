class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.integer :credit
      t.string :email
      t.string :passphrase

      t.timestamps
    end
  end
end
