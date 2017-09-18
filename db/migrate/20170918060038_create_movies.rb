class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :summary
      t.integer :release_year
      t.float :stars
      t.integer :rank
      t.string :genre
      t.string :director
      t.string :img_url

      t.timestamps
    end
  end
end
