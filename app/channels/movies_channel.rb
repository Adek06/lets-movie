class MoviesChannel < ApplicationCable::Channel
    def subscribed
        stream_from 'movies'
    end
end
