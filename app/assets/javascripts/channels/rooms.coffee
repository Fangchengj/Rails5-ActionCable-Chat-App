App.global_cat = App.cable.subscription.create {
  channel: "ChatRoomsChannel"
  chat_room_id ''
  },
  connected: ->

  disconnected: ->

  received: (data)->

  send_message: (message, chat_room_id) ->
    @perform 'send_message', message: message, chat_room_id: chat_room_id  
