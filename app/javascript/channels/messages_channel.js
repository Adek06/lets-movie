import consumer from "./consumer"

consumer.subscriptions.create("MessagesChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    console.log(data)
    $("#comments_id").append('<li>'+data.message+'</li>');
    // Called when there's incoming data on the websocket for this channel
  }
});
