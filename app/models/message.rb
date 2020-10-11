class Message < ApplicationRecord
  belongs_to :user
  belongs_to :movie_room
end
