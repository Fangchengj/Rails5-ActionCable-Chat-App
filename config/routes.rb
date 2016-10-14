Rails.application.routes.draw do
  # get 'home/index'
  #
  # get 'chat_rooms/index'
  #
  # get 'chat_rooms/create'
  #
  # get 'chat_rooms/new'
  #
  # get 'chat_rooms_controller/index'
  #
  # get 'chat_rooms_controller/create'
  #
  # get 'chat_rooms_controller/new'
  #
  # get 'chat_room_controller/index'
  #
  # get 'chat_room_controller/create'
  #
  # get 'chat_room_controller/new'

  resources :chat_rooms, only: [:index, :new, :create, :show]
  root to 'chat_rooms#index'
  devise_for :users, controllers: {registrations: "registrations"}
end
