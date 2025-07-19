class LobbyChannel < ApplicationCable::Channel
  def subscribed
    stream_for "lobby"
    # Notify others
    broadcast_user_join
  end

  # def receive(data)
  #   # Broadcast message or commands
  #   LobbyChannel.broadcast_to("lobby", { type: 'chat', user: current_user.email, message: data['message'] })
  # end

  def receive(data)
    # Only allow text chat from client
    message = current_user.chat_messages.create!(content: data["content"])
    LobbyChannel.broadcast_to("lobby",
      ApplicationController.renderer.render(partial: "chat_messages/message", locals: { message: message })
    )
  end

  def unsubscribed
    broadcast_user_leave
  end

  private

  def broadcast_user_join
    LobbyChannel.broadcast_to("lobby", { type: 'system', message: "#{current_user.email} has joined the lobby." })
  end

  def broadcast_user_leave
    LobbyChannel.broadcast_to("lobby", { type: 'system', message: "#{current_user.email} has left the lobby." })
  end
end
