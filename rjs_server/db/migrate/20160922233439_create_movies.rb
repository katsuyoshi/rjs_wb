class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.references :studio, index: true, foreign_key: true
      t.string :title

      t.timestamps null: false
    end
  end
end
