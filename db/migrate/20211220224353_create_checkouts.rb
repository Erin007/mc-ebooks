class CreateCheckouts < ActiveRecord::Migration[5.2]
  def change
    create_table :checkouts do |t|
      t.integer :user_id
      t.integer :book_id
      t.date :checkout_date
      t.date :checkin_date

      t.timestamps
    end
    add_index :checkouts, :user_id
    add_index :checkouts, :book_id
    add_index :checkouts, :checkout_date
    add_index :checkouts, :checkin_date
  end
end
