class MovieRoom < ApplicationRecord
    has_many :users, through: :messages
end
