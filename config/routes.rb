Rails.application.routes.draw do
  resources :movie_rooms
  mount ActionCable.server => '/cable'
  resources :users
  resources :messages

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
