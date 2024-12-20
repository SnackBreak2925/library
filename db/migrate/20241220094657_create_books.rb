class CreateBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :year
      t.text :description
      t.float :rating
      t.boolean :available

      t.timestamps
    end
    add_index :books, :title
    add_index :books, :year
    add_index :books, :description
    add_index :books, :rating
    add_index :books, :available
  end
end
