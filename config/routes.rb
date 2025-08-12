Rails.application.routes.draw do
  devise_for :users
  root  "home#index"

  # RPG entrance & desk
  get "/lobby", to: "game#lobby"
  get "/desk",  to: "game#desk"

  resources :tutorials, only: %i[index show]
  resources :chat_messages, only: :create

  # Action Cable endpoint
  mount ActionCable.server => "/cable"
end

