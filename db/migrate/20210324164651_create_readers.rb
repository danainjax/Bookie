class CreateReaders < ActiveRecord::Migration[6.1]
  def change
    create_table :readers do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :favorite_genre
      t.string :favorite_book

      t.timestamps
    end
  end
end
