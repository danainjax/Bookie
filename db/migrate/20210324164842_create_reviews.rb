class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :star_rating
      t.string :book_review
      t.integer :book_id
      t.integer :reader_id

      t.timestamps
    end
  end
end
