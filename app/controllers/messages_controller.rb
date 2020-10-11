class MessagesController < ApplicationController
    def create
        p "here"
        message = message_params
        p message
        ActionCable.server.broadcast 'messages',
        message: message['context']
        head :ok
    end

    private
        def message_params
            params.require(:message).permit(:context)
        end
end