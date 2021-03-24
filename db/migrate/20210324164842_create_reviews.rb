class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :star_rating
      t.string :book_review

      t.timestamps
    end
  end
end
