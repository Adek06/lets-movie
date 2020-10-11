class User < ApplicationRecord
    has_many :messages, class_name: "message"
    has_many :movie_rooms, class_name: "movie_room", through: :messages
end
