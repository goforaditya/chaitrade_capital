class ChatMessagesController < ApplicationController
  def create
    message = current_user.chat_messages.create!(content: params[:content])
    LobbyChannel.broadcast_to("lobby", render_to_string(partial: "chat_messages/message", locals: { message: message }))
    head :ok
  end
end
