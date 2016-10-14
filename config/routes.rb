Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "registrations"}
  resources :chat_rooms, only: [:index, :new, :create, :show]
  mount ActionCable.server => '/cable'
  root 'chat_rooms#index'
end
