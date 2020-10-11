import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "context", "roomId"]

  send() {

    let roomId = this.data.get("roomId")
    console.log(roomId)
    
    let message = {
      "room_id": roomId,
      "context": this.contextTarget.value
    }

    $.ajax({
      url: "/messages",
      type: "post",
      dataType: "json",
      contentType: 'application/json',
      data: JSON.stringify(message),
      success: function(data) {
      },
      error: function(data) {}
    })
  }
}