class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :isbn
      t.string :author

      t.timestamps
    end
    add_index :books, :title
    add_index :books, :isbn
    add_index :books, :author
  end
end
