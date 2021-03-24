class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :short_synopsis
      t.string :summary
      t.integer :pages

      t.timestamps
    end
  end
end
