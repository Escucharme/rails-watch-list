class CreateMovies < ActiveRecord::Migration[8.1]
  def change
    create_table :movies do |t|
      t.text :overview
      t.string :poster_url
      t.float :rating
      t.string :title

      t.timestamps
    end
  end
end
