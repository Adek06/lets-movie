class CreateMovieRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :movie_rooms do |t|
      t.string :title

      t.timestamps
    end
  end
end
