class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.decimal :year
      t.string :mpaa_rating
      t.decimal :runtime
      t.string :critics_consensus
      t.date :release_date
      t.string :critics_rating
      t.decimal :critics_score
      t.string :audience_rating
      t.string :audience
      t.decimal :score
      t.text :synopsis
      t.string :poster_thumbnail
      t.string :poster_detail
      t.string :poster_detail
      t.decimal :imdb

      t.boolean :box_office
      t.boolean :in_theaters
      t.boolean :opening
      t.boolean :upcoming

      t.timestamps
    end
  end
end
