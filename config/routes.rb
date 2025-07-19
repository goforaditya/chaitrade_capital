Rails.application.routes.draw do
  # get "chat/index"
  # get "tutorials/index"
  # get "tutorials/show"
  # get "game/lobby"
  # get "game/trading_floor"
  # get "game/news_room"
  # get "home/index"
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  
  root to: "home#index"
  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
  
  # Game Areas  
  get '/lobby', to: 'game#lobby'
  get '/trading_floor', to: 'game#trading_floor'
  get '/news_room', to: 'game#news_room'

  # Features
  resources :tutorials
  resources :chat_messages, only: [:create]

  # Action Cable
  mount ActionCable.server => '/cable'
end
