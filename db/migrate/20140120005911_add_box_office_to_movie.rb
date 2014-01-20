class AddBoxOfficeToMovie < ActiveRecord::Migration
  def change
    add_column :movies, :box_office, :boolean
    add_column :movies, :in_office, :boolean
    add_column :movies, :opening, :boolean
    add_column :movies, :upcoming, :boolean
  end
end
