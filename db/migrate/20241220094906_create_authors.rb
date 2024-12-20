class CreateAuthors < ActiveRecord::Migration[8.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :surname
      t.string :patronymic
      t.string :language

      t.timestamps
    end
    add_index :authors, :name
    add_index :authors, :surname
    add_index :authors, :patronymic
  end
end
